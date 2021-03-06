clc
close all
clear all

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
load database
D=[];
for (i=1:size(F,1))
    d=sum(abs(F(i)-f));
    D=[D d];
end
sm=2;
ind=-1;
for (i=1:length(D)-1)
    if (D(i)<sm)
        sm=D(i);
        ind=i-1;
    end
end
detected_class=C(ind);
detected_class
