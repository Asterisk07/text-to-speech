audio_vector=audioread('audio.wav');
fs=8000;
%sound(audio_vector, 8000);
y=fft(audio_vector);
L=length(y);
f = fs*(0:L-1)/(2*L);
plot(f,abs(fftshift((y))));