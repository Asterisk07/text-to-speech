n=6 %order;
fs = 8000;
fcr=2250;
toler=200;
[b,a] = butter(n,[fcr-toler,fcr+toler]/fs);

freqz(b,a,[],fs)

subplot(2,1,1)
ylim([-100 20])