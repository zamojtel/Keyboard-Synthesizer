#czestotliwosc próbkowania 
fs=44100;
duration=1;
#hz
#f=250
f=350;
N= duration*fs;
n= 1:N;
t = n/fs;
#y= sin(f*t*2*pi)*0.15;
y=zeros(1,N);
#plot(t,y)
#player = audioplayer (y, fs);
#play (player);
#tablica na wielokrotnosci czestotliwosc podstawowej
nComponents= 16;
#ratios=[1 2 4 8];
#amplitudes=[1 0.5 0.25 0.125];
#tworzenie dzwiekow nieharmonicznych

ratios=1.2.^((1:nComponents)-1);
#. element po elemencie
amplitudes=1./(1:nComponents);
for i=1:nComponents
  y+=sin(ratios(i)*f*t*2*pi)*amplitudes(i);
end
y*=0.1/length(m);
plot(y);
player = audioplayer (y, fs);
play (player);