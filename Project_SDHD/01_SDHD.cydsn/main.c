/* ========================================
 * Name                 : Chaithra Mahadeva
 * Matriculation Number : 766481
 * Major                : Communication
 * ========================================
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/
#include "project.h"

/*Buffer size*/
#define ADC_DMA_Bufsize 2048

/*Destination Buffer*/
uint16_t ADC_DMA_Buf[ADC_DMA_Bufsize];

/* Variable declarations for DMA */
/* Move these variable declarations to the top of the function */
uint8 DMA_Chan;
uint8 DMA_TD[1];

/* Defines for DMA */
#define DMA_BYTES_PER_BURST 2
#define DMA_REQUEST_PER_BURST 1
#define DMA_SRC_BASE (CYDEV_PERIPH_BASE)
#define DMA_DST_BASE (CYDEV_SRAM_BASE)

/*Application status variable and different states*/
enum App_State{
	IS_IDLE,            //Idle state
	IS_Sampling,        //Starts sampling and waits for Matlab indication to move to next state
	IS_UARTTransfer     //Starts sending data if 's' recieved
};
typedef enum App_State App_State_t;

App_State_t Appstate;   //variable for application status

void UARTtoMatlab_Transfer(void);   //function to communicate with Matlab
void stateHandler(void);            //function to handle different states of application

/*function to handle pushbutton interrupt
 *Parameter NIL
 *Return value void
 */
void isr_pb()
{
    ADC_DelSig_StartConvert();      //start analog to digital conversion
    Pin_RedLED_Write(1);            //switch on red led to indicate state change to Sampling
    Pin_GreenLED_Write(0);          //keep other LEDs off
    Pin_YellowLED_Write(0);         //keep other LEDs off
    Pin_PB_ClearInterrupt();        //clear the interrupt
}

/*function to handle Matlab interrupt
 *Parameter NIL
 *Return value void
 */
void isr_uart()
{
    if(ISR_DMA_GetState()==1)        //check whether application in Sampling state
    {
        Pin_YellowLED_Write(1);     //switch on red led to indicate state change to UARTTransfer state
        Pin_RedLED_Write(0);        //keep other LEDs off
        Pin_GreenLED_Write(0);      //keep other LEDs off
    }
}

/*function to handle Dma interrupt
 *Parameter NIL
 *Return value void
 */
void isr_dma()
{
    CyDmaChEnable(
        DMA_Chan,       //Channel handle
        1               //When a TD is completed, the DMAC restores the original configuration values of the TD.
    ); 
}

int main(void)
{
    CyGlobalIntEnable;      /* Enable global interrupts. */

    /*  Place your initialization/startup code here (e.g. MyInst_Start()) */
    WaveDAC8_Start();       //start WaveDAC
    ADC_DelSig_Start();     //start ADC
    
    //  Sets up the interrupt and enables it
    ISR_PB_StartEx(isr_pb);     //Calling ISR once Push Button is pressed
    
    ISR_UART_StartEx(isr_uart); //whenever a char is recieved from Matlab
    
    ISR_DMA_StartEx(isr_dma);   //Whenever a dma interrupt is triggered
    
    /*  DMA Configuration for DMA */
    /*Allocates and initializes a DMA channel to be used by the caller
     *uint8: The channel that can be used by the caller for DMA activity. 
     *Returns CY_DMA_INVALID_CHANNEL (0xFF) if there are no channels left
     */
    DMA_Chan = DMA_DmaInitialize(
        DMA_BYTES_PER_BURST,            //Number of bytes for each sample
        DMA_REQUEST_PER_BURST,          //All subsequent bursts after the first burst must also be individually requested
        HI16(ADC_DelSig_DEC_SAMP_PTR),  //Source Buffer
        HI16(ADC_DMA_Buf)               //Destination Buffer
    );
    
    /*Allocates a TD for use with an allocated DMA channel
     *Return value: Zero-based index of the TD to be used by the caller(range from 24 to 127)
     */
    DMA_TD[0] = CyDmaTdAllocate();      
    
    /*Sets configuration information for the channel
     *Return value: CYRET_SUCCESS if successful, CYRET_BAD_PARAM if chHandle is invalid
     */
    CyDmaTdSetConfiguration(
        DMA_TD[0],          //transport descriptor handle
        2048,               //total number of bytes
        CY_DMA_DISABLE_TD,  //terminate channel after TD has finished
        DMA__TD_TERMOUT_EN | CY_DMA_TD_INC_DST_ADR
    );
    
    /*Sets the lower 16 bits of the source and destination addresses for this TD only
     *Return value: CYRET_SUCCESS if successful, CYRET_BAD_PARAM if tdHandle is invalid
     */
    CyDmaTdSetAddress(
        DMA_TD[0],                              //TD channel used
        LO16((uint32)ADC_DelSig_DEC_SAMP_PTR),  //Source buffer
        LO16((uint32)ADC_DMA_Buf)               //Destination buffer
    );
    
    /*Sets the initial TD to be executed for the channel when the CyDmaChEnable() function is called
     *Return value: CYRET_SUCCESS if successful, CYRET_BAD_PARAM if chHandle is invalid*/
    CyDmaChSetInitialTd(
        DMA_Chan,       //A handle previously returned by CyDmaChAlloc() or DMA_DmaInitialize()
        DMA_TD[0]       /*The index of TD to set as the first TD associated with the channel. 
                        Zero is a valid TD index*/
    );
    
    /*Enables the DMA channel
    Return value: CYRET_SUCCESS if successful, CYRET_BAD_PARAM if chHandle is invalid*/
    CyDmaChEnable(
        DMA_Chan,       //Channel handle
        1               //When a TD is completed, the DMAC restores the original configuration values of the TD.
    );     

    for(;;)
    {
        /* Place your application code here. */  
    
        stateHandler();
        asm("nop");
    }
}

void stateHandler()
{
    switch(Appstate)
    {
	case IS_IDLE:       WaveDAC8_Start();       //start DAC
				        ADC_DelSig_Start();     //start ADC
				        UART_Start();           //start UART
				        if(Pin_RedLED_Read()==1)
                        {
                            //if status of led is high then go to next state
				            Appstate = IS_Sampling;     //state changes to sampling
                        }
				        break;
	
	case IS_Sampling:  	if(Pin_YellowLED_Read()==1)
                        {
                            //if status of led is high then go to next state
				            Appstate = IS_UARTTransfer; //state changes to UART Transfer
                        }
						break;
                        
	case IS_UARTTransfer:   UARTtoMatlab_Transfer();    //function to communicate with Matlab
                            if(Pin_GreenLED_Read()==1)
                            {
                                //if status of led is high then go to next state
                                Pin_RedLED_Write(1);    //indicating state change to Idle state
                                Pin_GreenLED_Write(0);  //turn off other LEDs
                                Pin_YellowLED_Write(0); //turn off other LEDs
                                Appstate = IS_Sampling; //state changes to sampling                  
                            }
                            break;
    }
}

/*Function to communicate with Matlab
 *when Matlab sends 's' e startsending data and Matlab notifies with 'o' for succesful reception*/
void UARTtoMatlab_Transfer()
{
    if(UART_GetChar()=='s')
    {
        UART_PutArray(
            ADC_DMA_Buf,        //Data buffer
            ADC_DMA_Bufsize     //Buffer size
        );                        
    }
        Pin_GreenLED_Write(1);      //Turn on green LED to indicate sussesful data transmission
        Pin_RedLED_Write(0);        //keep other LEDs off
        Pin_YellowLED_Write(0);     //keep other LEDs off
}  

/* [] END OF FILE */
