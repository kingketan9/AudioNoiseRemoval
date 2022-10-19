% Program to implement a low pass filter (FIR) with cutoff 8KHz to 
% denoise audio signal

[x,fs] = audioread ('mysongout.wav');

% Filter implementation

% Sampling Frequency
Fsf = 44100;  
% PassBand frequency in Hz
Fp = 8e3;
% StopBand frequency in Hz
Fst = 8.4e3;
% PassBand ripple in dB
Ap = 1;
% StopBand attenuation in dB
Ast = 95;

% Design the Filter
df = designfilt('lowpassfir', "PassbandFrequency",Fp, "Stopbandfrequency",Fst,"PassbandRipple",Ap,"StopbandAttenuation",Ast,"SampleRate",Fsf);

% Visualize FReq response of Filter
fvtool(df); 

% Signal corrupted by the white Gaussian noise
xn = awgn(x,15,'measured');

y = filter(df,xn);

% Plotting the Signals
subplot(3,1,1)
plot(x(1:450));
title('Original Signal');
subplot(3,1,2)
plot(xn(1:450));
title('Noisy Signal');
subplot(3,1,3)
plot(y(1:450));
title('Filtered Signal');
