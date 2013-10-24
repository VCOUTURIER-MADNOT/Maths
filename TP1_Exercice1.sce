// TP1 MA0507 //

// Exercice 1

w1 = 2*%pi*500;
w2 = 2*%pi*501;

t = soundsec(4);

y1 = sin(w1*t);
y2 = sin(w2*t);
y3 = y1 + y2;

plot (t, y3);