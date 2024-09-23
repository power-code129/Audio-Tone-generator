//  Project done by Priyanka gandhi A (22uel031)

clc;
clear all;
close;

// Sampling frequency
fs = 8000; 
t = 0:1/fs:0.5; // Time vector for 0.5 seconds of sound
k = 2; // Frequency scale factor (adjust this to shift pitches)

// Audio tone frequencies for multiple octaves
C1 = sin(2*%pi*k*33*t);
C2 = sin(2*%pi*k*65*t);
C3 = sin(2*%pi*k*130*t);
C4 = sin(2*%pi*k*262*t);
C5 = sin(2*%pi*k*523*t);
C6 = sin(2*%pi*k*1047*t);

D1 = sin(2*%pi*k*37*t);
D2 = sin(2*%pi*k*73*t);
D3 = sin(2*%pi*k*146*t);
D4 = sin(2*%pi*k*294*t);
D5 = sin(2*%pi*k*587*t);
D6 = sin(2*%pi*k*1175*t);

E1 = sin(2*%pi*k*41*t);
E2 = sin(2*%pi*k*82*t);
E3 = sin(2*%pi*k*165*t);
E4 = sin(2*%pi*k*330*t);
E5 = sin(2*%pi*k*659*t);
E6 = sin(2*%pi*k*1319*t);

F1 = sin(2*%pi*k*44*t);
F2 = sin(2*%pi*k*87*t);
F3 = sin(2*%pi*k*175*t);
F4 = sin(2*%pi*k*349*t);
F5 = sin(2*%pi*k*698*t);
F6 = sin(2*%pi*k*1397*t);

G1 = sin(2*%pi*k*49*t);
G2 = sin(2*%pi*k*98*t);
G3 = sin(2*%pi*k*196*t);
G4 = sin(2*%pi*k*392*t);
G5 = sin(2*%pi*k*784*t);
G6 = sin(2*%pi*k*1568*t);

A1 = sin(2*%pi*k*55*t);
A2 = sin(2*%pi*k*110*t);
A3 = sin(2*%pi*k*220*t);
A4 = sin(2*%pi*k*440*t);
A5 = sin(2*%pi*k*880*t);
A6 = sin(2*%pi*k*1760*t);

B1 = sin(2*%pi*k*61*t);
B2 = sin(2*%pi*k*123*t);
B3 = sin(2*%pi*k*247*t);
B4 = sin(2*%pi*k*494*t);
B5 = sin(2*%pi*k*988*t);
B6 = sin(2*%pi*k*1976*t);

// Example: Playing a higher octave tone (C5, C6)
sound(C5, fs); // Play C5 (523 Hz)
sound(C6, fs); // Play C6 (1047 Hz)

// Plot the waveform of C6
plot(t, C6);   
title('Waveform of C6 (1047 Hz)');

// Playing multiple tones together (higher range chord)
notes_high = [C5; E5; G5]; // Higher octave C major chord
sound(sum(notes_high, 'r'), fs); // Play the higher chord

// Playing notes in sequence (melody example)
sound([C5, D5, E5, F5, G5], fs); // Play a scale in higher range
