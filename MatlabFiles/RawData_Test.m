%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The LTspice LMV385.raw is extracted for the simulated data and is plotted
% as a reference to check Bandpass filter characteristics.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all;
clear all;
clc;

%Function call to extract data to s structure
RAW_DATA = LTspice2Matlab('LMV385.RAW', [5 10 11]);

%Creating vectors for measured values and respective frequencies
F = [10 15 20 60 100 200 300 400 459.77 500];
A1 = [34.0558266 36.84722 37.8804 39.64526 39.40205 39.31906 37.67981 37.04163 36.14382 35.42445];
A2 = [4.401296848 6.115580517 7.402965245 9.913226835 9.719959428 9.401949424 9.819977973 9.745569062 9.656733566 9.500135042];
A = [38.45712345 42.96280063 45.28336983 49.55848406 49.12200746 48.72101095 47.49979163 46.78719467 45.80055028 44.92458464];

%Plotting the extracted data on a logarthmic scale
semilogx(RAW_DATA.freq_vect, mag2db(abs(RAW_DATA.variable_mat)));
hold on;

%Plotting measured datapoints on the same Plot
semilogx(F,A1,'*');
semilogx(F,A2,'*');
semilogx(F,A,'*');

%Adding title, legend, and x-y labels to the Plot
title( sprintf( 'File:  %s', RAW_DATA.title) );
legend( char(RAW_DATA.variable_name_list(5)), char(RAW_DATA.variable_name_list(10)), char(RAW_DATA.variable_name_list(11)),...
    'A1', 'A2', 'A');
ylabel( 'Voltage (V) in dB' );
xlabel( 'Freq (Hz)');





































