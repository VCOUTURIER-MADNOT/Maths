r = 2^(1/12);
la = 440 * 2 * %pi;
note = [];
note = [la];

// a.%b multiplication matrice element par element

for i=0:1:11
  la = la * r;
  note = [note la];
end

pulsMinute = 360;
puls = 60 / pulsMinute;
pause = 0 * soundsec(10/pulsMinute);
musique = [note(3) * soundsec(puls) pause note(3) * soundsec(puls) pause note(3) * soundsec(puls) pause note(5) * soundsec(puls) pause note(7) * soundsec(puls*2) pause note(5) * soundsec(puls*2) pause];
musique = [musique note(3) * soundsec(puls) pause note(7) * soundsec(puls) pause note(5) * soundsec(puls) pause note(5) * soundsec(puls) pause note(3) * soundsec(puls*2) pause];
musique = [musique musique];
musique = [musique note(5) * soundsec(puls) pause note(5) * soundsec(puls) pause note(5) * soundsec(puls) pause note(5) * soundsec(puls) pause note(1) * soundsec(puls) pause]
playsnd(sin(musique))
