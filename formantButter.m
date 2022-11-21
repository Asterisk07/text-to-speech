%formant by butter filter
audio_vector=audioread('audio.wav');
fs=8000;
y=fft(audio_vector);
toler=200;
fcr=2250;
formant3=f;
[b,a]=butter(3,[fcr-toler,fcr+toler]/(fs/2));
L=length(y1);
L2=length(b);
L3=length(a);
f = fs*(0:L-1)/(2*L);
L1=y1(1)-y1(0);
k=0;
m=0;
for i=f(0):f(end)
    n=0;
    for j=0:1:L2
        k=k+b(j)*(i)^(n);
        n=n-1;
    end
    n=0;
    for j=0:1:L3
        m=m+a(j)*(i)^(n);
        n=n-1;
    end
    n=0;
    h=b/a;
    formant3(i)=h*y1(n2);
end
