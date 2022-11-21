audio_vector=audioread('audio.wav');
fs=8000;
%sound(audio_vector, 8000);
y=fft(audio_vector);
toler=200;
fcr=2250;

[b,a]=butter(3,[fcr-toler,fcr+toler]/(fs/2))
L=length(y1);
%L=25;


%disp(z);
i=4;
f = fs*(0:L-1)/(2*L);
sound(y1,fs);
%se=[1 2 3 4 5 6 7 8 9 10];
%plot(f,(y1));
%disp(2);
%w=sin(f);
%plot(f,w);
%disp('ere');