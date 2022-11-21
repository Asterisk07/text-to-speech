audio_vector=audioread('audio.wav');
fs=8000;
%sound(audio_vector, 8000);
y=fft(audio_vector);
%disp()
%disp(y)
for i=1:1:20000000
    %disp(i);
end;
L=50;
z=y(1:L+1)
%disp(z);

f = fs*(0:L)/(2*L);
%se=[1 2 3 4 5 6 7 8 9 10];
%plot(f,(z));
%disp(2);
%w=sin(f);
%plot(f,w);
%disp('ere');