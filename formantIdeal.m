%formant by ideal band pass filter
audio_vector=audioread('audio.wav');
fs=8000;
y=fft(audio_vector);
toler=20;
L1=y(1)-y(0);
fcr=2250;
L=length(y);
formant3=zeroes(L);
f = fs*(0:L-1)/(2*L);
for i=fcr-toler:L1:fcr+toler    
    formant3(i)=y1(n2);
end

    

    


