function [x]=VoiceFeatures(data)
F=fft(data(:,1));
plot(real(F));
n=max(real(F));
x=find(real(F)==n,1);
