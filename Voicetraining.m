clear all
close all
clc

recorder=audiorecorder(16000,8,2);
disp("Please record your voice");
drawnow();
pause(1);
recordblocking(recorder,5);
play(recorder);
data=getaudiodata(recorder);
plot(data);
figure;

f=VoiceFeatures(data);
uno=1;
try
    load database
    F=[F;f];
    C=[C;uno];
    save database
catch
    F=f;
    C=uno;
    save database F C
end

msgbox('voice registered');


