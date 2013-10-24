clear
//
//generate the vector
//t=soundsec(4);
//
//generate the 2 sounds as long as the vector
//y1=(sin(2*%pi*500*t));
//y2=(sin(2*%pi*501*t));
//
//play them
//playsnd(y1);
//playsnd(y2);
//playsnd(y1+y2);
//
//draw them
//the two first a just sinuses, not differences are earable, but once you add them, 
//you can hear that they aren't on the same frequency, they start in phase (sound), 
//and evolve at different speeds, so at one moment they have opposites values and 
//counter each other, leading to no sound.
//
//plot(y1);
//plot(y2);
//plot(y1+y2);
//
//
//music notes
//
//freq=440;
//r=2^(1/12);
//t=soundsec(0.75);
//
//
//	function [nextTone,freq]=NextTone(freq)
//		freq= freq*r;
//		nextTone=(sin(2*%pi*freq*t));
//	endfunction
//
////12 tones
//la3=(sin(2*%pi*freq*t));
//[si,freq]=NextTone(freq);
//[do,freq]=NextTone(freq);
//[do#,freq]=NextTone(freq);
//[re,freq]=NextTone(freq);
//[re#,freq]=NextTone(freq);
//[mi,freq]=NextTone(freq);
//[fa,freq]=NextTone(freq);
//[fa#,freq]=NextTone(freq);
//[sol,freq]=NextTone(freq);
//[sol#,freq]=NextTone(freq);
//[la4,freq]=NextTone(freq);
//pause = 250;
//
//playsnd(do);
//sleep(pause);
//playsnd(re);
//sleep(pause);
//playsnd(mi);
//sleep(pause);
//playsnd(do);
//sleep(pause);
//playsnd(do);
//sleep(pause);
//playsnd(re);
//sleep(pause);
//playsnd(mi);
//sleep(pause);
//playsnd(do);
//sleep(pause);
//
//playsnd(fa);
//sleep(pause);
//playsnd(sol);
//sleep(pause);
//playsnd(la4);
//sleep(pause+100);
//playsnd(fa);
//sleep(pause);
//playsnd(sol);
//sleep(pause);
//playsnd(la4);
//sleep(pause);
//
//

////////////////////////////////////////////////////////////////////////////////
//Exercice 3
//
//function [x]=MONREC(t)
//x = 2*((pmodulo(t/2,1))>=0.5)-1
//
//endfunction
//
//function [x]=MASCIE(t)
//    x = pmodulo(t/2,1)
//endfunction
//
//t = linspace(-10,10,1001)
//y = zeros(t)
//yb = zeros(t)
//
//y=MASCIE(t)
//yb=MONREC(t)
//
//plot(t,y*0.9)
//plot(t,yb*0.9,"b+")

//playsnd(y);
//playsnd(yb); //son de plus forte intensité

////////////////////////////////////////////////////////////////////////////////
//Exercice 4

//N=4001;
//t = linspace(-6.4,-6.1,N)
//
//function [x]=Gibbs(t)
//    if pmodulo(t,2*%pi) <= %pi then
//        x=1
//    else
//        x=-1
//    end
//endfunction
//
//function [x]=GibbsViaFourier(t,loop)
//    x = zeros(t)
//    for i = 0:loop
//        x = x +((sin((2*i+1)*t))/(2*i+1))
//    end
//    x = (4/%pi) * x
//endfunction
//
//y1 = zeros(t)
//y2 = zeros(t)
//y3 = zeros(t)
//y4 = zeros(t)
//y5 = zeros(t)
//
//
//for i=1:N
//    y1(i) = Gibbs(t(i))
//end
//
//    y2 = GibbsViaFourier(t,2)
//    y3 = GibbsViaFourier(t,5)
//    y4 = GibbsViaFourier(t,10)
//    y5 = GibbsViaFourier(t,2000)
//
//plot(t,y1*0.9,"g")
////plot(t,y3*0.9)
////plot(t,y4*0.9)
//plot(t,y5*0.9,"r")

////////////////////////////////////////////////////////////////////////////////
//Exercice 5

N=1001
t = linspace(-10,10,N)

function [x]=exercice5(t)
    T=%pi
    x = (abs((pmodulo(t,2*T))-T)-T/2) * 2
endfunction

function [x]=exercice5ViaFourier(t,loop)
    x = zeros(t)
    for i = 0:loop
        x = x +((cos((2*i+1)*t))/((2*i+1)^2))
    end
    x = ((%pi/2)-(4/%pi))* x
endfunction

y1 = zeros(t)
y2 = zeros(t)
y3 = zeros(t)
y4 = zeros(t)
y5 = zeros(t)


for i=1:N
    y1(i) = exercice5(t(i))
end

    y2 = exercice5ViaFourier(t,2)
    y3 = exercice5ViaFourier(t,5)
    y4 = exercice5ViaFourier(t,10)
    y5 = exercice5ViaFourier(t,100)

plot(t,y1)
plot(t,y2*0.9)
//plot(t,y3*0.9)
//plot(t,y4*0.9)
plot(t,y5*0.9)

