Fs=14400 % Sampling Frequency
f=[600 1040 2250 ;400 1620 2400;250 1750 2600]
wa=[1 0.44668359215096 0.354813389;1 0.2511886 0.354813389]
%we have considered sinosoidal signal and combined the formants using it .
%later we will extract formants from noise signal using band pass filter in
%frequency domain
t  = linspace(0, 1, Fs);
disp(t);
s=0 
for j=1:2
    for c=1:3
    
        w = 2*pi*f(j,c)                                  
        s = s+wa(j,c)*(sin(w*t));                                  
    end
    sound(s, Fs);
    s=0;
    pause(1);
end


  