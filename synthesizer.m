1;


function y = sine(t)
  y=sin(2*pi*t);
end

function y= square(t)
  y=zeros(1,length(t));
  for i=1:length(t)
    if(t(i)<0.5)
      y(i)=1;
    else
      y(i)=-1;
    end
  end
end
function y=saw(t)
  y = 2*t-1;
end
#czestotliwosc próbkowania ile probek przypada na sekunde dzwieku
fs=44100;
duration=15;
#hz
#f=350
f=100;
N= duration*fs;
n= 1:N;
t = n/fs;
#y= sin(f*t*2*pi)*0.15;
y=zeros(1,N);

phase = 0;
for i=1:N
  #y(i)=0.1*sin(phase*2*pi);
  y(i)=0.1*sine(phase);  
  phase+=f/fs;
  if(phase>=1)
    phase-=1;
  end
  f*=1.00001;
end
plot(y);
player = audioplayer (y, fs);
play (player);