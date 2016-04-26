%% Jul 25, 2013
% SPFT script to calculate the simple comparison sequence based on the
% actual sequence and matched for total force and frequency
% Altered on Aug 14, 2013 (Chris Steele)
% This version works and is what is output for presentation sequences

%taken from the presentation script, same sequence as in Gryga et al, 2011
%clear all; 
close all;

LRN=[90;90;91;91;92;92;93;94;95;97;99;101;103;105;107;109;111;113;115;117;120;123;126;129;132;135;138;140;142;144;146;148;150;152;154;156;158;160;162;163;164;165;166;167;167;168;168;169;169;170;170;169;169;168;168;167;166;165;164;163;162;161;160;159;158;157;155;153;151;149;147;145;143;141;139;137;135;133;131;129;127;125;123;121;119;117;115;113;111;109;107;105;103;101;100;99;98;97;96;95;94;93;92;92;91;91;90;90;90;91;91;92;92;93;95;97;99;102;105;108;111;114;117;120;123;126;129;132;134;136;137;138;139;139;140;140;139;139;138;137;136;135;134;132;130;128;126;124;122;120;118;116;115;114;113;112;111;110;109;108;107;106;105;104;103;102;102;101;101;100;100;100;101;101;102;103;104;105;106;107;108;109;110;111;112;113;115;117;119;121;123;125;127;129;131;133;135;137;139;141;143;144;145;146;147;148;149;150;151;152;153;154;155;156;157;158;159;159;160;160;160;159;159;158;158;157;157;156;155;154;153;151;149;147;145;143;141;139;137;135;133;131;129;127;124;121;118;115;112;109;106;103;100;97;94;91;88;85;82;79;76;73;70;67;64;61;59;57;55;53;51;49;47;45;43;41;39;38;37;36;35;34;33;32;31;30;29;28;27;26;25;24;24;23;23;22;22;21;21;20;20;20;21;21;22;22;23;23;24;24;25;26;27;28;29;30;31;32;34;36;38;40;42;44;46;48;50;52;54;56;58;60;62;64;66;69;72;75;78;81;84;87;90;93;96;99;102;105;108;111;114;117;120;123;126;129;132;135;138;141;144;147;150;152;154;156;158;160;162;163;164;165;166;167;168;168;169;169;170;170;169;169;168;167;166;164;162;159;156;153;150;148;146;144;143;142;141;141;140;140;140;141;141;142;143;144;146;148;151;152;153;154;155;156;157;158;158;159;159;160;160;159;159;158;157;156;154;151;148;145;141;137;133;129;125;121;118;115;112;109;106;103;101;99;97;95;93;92;91;90;89;88;87;86;85;84;83;82;81;80;79;78;78;77;77;77;78;78;79;80;81;82;83;84;85;86;87;88;89;90;91;92;93;94;95;96;97;98;99;100;101;102;103;105;107;109;111;113;115;117;120;123;126;129;132;135;138;140;142;144;146;148;150;152;154;156;158;160;162;163;164;165;166;167;167;168;168;169;169;170;170;169;169;168;168;167;166;165;164;163;162;161;160;159;158;157;155;153;151;149;147;145;143;141;139;137;135;133;131;129;127;125;123;121;119;117;115;113;111;109;107;105;103;101;100;99;98;97;96;95;94;93;92;92;91;91;90;90;90;91;91;92;92;93;95;97;99;102;105;108;111;114;117;120;123;126;129;132;134;136;137;138;139;139;140;140;139;139;138;137;136;135;134;132;130;128;126;124;122;120;118;116;115;114;113;112;111;110;109;108;107;106;105;104;103;102;102;101;101;100;100;100;101;101;102;103;104;105;106;107;108;109;110;111;112;113;115;117;119;121;123;125;127;129;131;133;135;137;139;141;143;144;145;146;147;148;149;150;151;152;153;154;155;156;157;158;159;159;160;160;160;159;159;158;158;157;157;156;155;154;153;151;149;147;145;143;141;139;137;135;133;131;129;127;124;121;118;115;112;109;106;103;100;97;94;91;88;85;82;79;76;73;70;67;64;61;59;57;55;53;51;49;47;45;43;41;39;38;37;36;35;34;33;32;31;30;29;28;27;26;25;24;24;23;23;22;22;21;21;20;20;20;21;21;22;22;23;23;24;24;25;26;27;28;29;30;31;32;34;36;38;40;42;44;46;48;50;52;54;56;58;60;62;64;66;69;72;75;78;81;84;87;90;93;96;99;102;105;108;111;114;117;120;123;126;129;132;135;138;141;144;147;150;152;154;156;158;160;162;163;164;165;166;167;168;168;169;169;170;170;169;169;168;167;166;164;162;159;156;153;150;148;146;144;143;142;141;141;140;140;140;141;141;142;143;144;146;148;151;152;153;154;155;156;157;158;158;159;159;160;160;159;159;158;157;156;154;151;148;145;141;137;133;129;125;121;118;115;112;109;106;103;101;99;97;95;93;92;91;90;89;88;87;86;85;84;83;82;81;80;79;78;78;77;77;77;78;78;79;80;81;82;83;84;85;86;87;88;89;90;91;92;93;94;95;96;97;98;99;100;101;102;103;105;107;109;111;113;115;117;120;123;126;129;132;135;138;140;142;144;146;148;150;152;154;156;158;160;162;163;164;165;166;167;167;168;168;169;169;170;170;169;169;168;168;167;166;165;164;163;162;161;160;159;158;157;155;153;151;149;147;145;143;141;139;137;135;133;131;129;127;125;123;121;119;117;115;113;111;109;107;105;103;101;100;99;98;97;96;95;94;93;92;92;91;91;90;90;90;91;91;92;92;93;95;97;99;102;105;108;111;114;117;120;123;126;129;132;134;136;137;138;139;139;140;140;139;139;138;137;136;135;134;132;130;128;126;124;122;120;118;116;115;114;113;112;111;110;109;108;107;106;105;104;103;102;102;101;101;100;100;100;101;101;102;103;104;105;106;107;108;109;110;111;112;113;115;117;119;121;123;125;127;129;131;133;135;137;139;141;143;144;145;146;147;148;149;150;151;152;153;154;155;156;157;158;159;159;160;160;160;159;159;158;158;157;157;156;155;154;153;151;149;147;145;143;141;139;137;135;133;131;129;127;124;121;118;115;112;109;106;103;100;97;94;91;88;85;82;79;76;73;70;67;64;61;59;57;55;53;51;49;47;45;43;41;39;38;37;36;35;34;33;32;31;30;29;28;27;26;25;24;24;23;23;22;22;21;21;20;20;20;21;21;22;22;23;23;24;24;25;26;27;28;29;30;31;32;34;36;38;40;42;44;46;48;50;52;54;56;58;60;62;64;66;69;72;75;78;81;84;87;90;93;96;99;102;105;108;111;114;117;120;123;126;129;132;135;138;141;144;147;150;152;154;156;158;160;162;163;164;165;166;167;168;168;169;169;170;170;169;169;168;167;166;164;162;159;156;153;150;148;146;144;143;142;141;141;140;140;140;141;141;142;143;144;146;148;151;152;153;154;155;156;157;158;158;159;159;160;160;159;159;158;157;156;154;151;148;145;141;137;133;129;125;121;118;115;112;109;106;103;101;99;97;95;93;92;91;90;89;88;87;86;85;84;83;82;81;80;79;78;78;77;77;77;78;78;79;80;81;82;83;84;85;86;87;88;89;90];
plot(LRN);
duration=18; %duration in s
n_samples=length(LRN);
n_unique_samples=n_samples/3; %this is b/c the sequence is actually made up of a smaller sequence repeated 3 times
sample_freq=n_samples/duration; %in Hz

figure;plot(LRN,'bo','MarkerFace','b'); set(gcf,'Position',[0   750   983   190]); box off;


figure; psd(LRN,n_samples,sample_freq)


x = detrend(LRN,0);
psdest = psd(spectrum.periodogram,x,'Fs',sample_freq,'NFFT',length(x));
[~,I] = max(psdest.Data);
fprintf('Maximum for LRN occurs at %d Hz.\n',psdest.Frequencies(I));
figure;plot(psdest)

% DOING IT BY HAND WORKS THE BEST!!!

%now calculate a sin wave that has a max power at same freq
fs=sample_freq;
t = 0 : ( 1 / fs) : n_samples / fs; % fs = sampling frequency
f=psdest.Frequencies(I);
y = range(LRN)/2*sin(2 * pi * f .* t);
%SMP = 
SMP=ceil(y+mean(LRN)-mean(y)-.568); %center this on the force required for LRN, this is done by trial and error
x = detrend(SMP,0);
SMP=SMP(1:end-1); %cut off that extra one :-/

figure;plot(SMP,'go','MarkerFace','g'); set(gcf,'Position',[0   450   983   190]); box off;

figure; plot(SMP,'go','MarkerFace','g'); set(gcf,'Position',[0   150   983   190]); box off;
hold on; plot(LRN,'bo','MarkerFace','b');
legend('LRN','SMP');
psdest2 = psd(spectrum.periodogram,x,'Fs',sample_freq,'NFFT',length(x));
[~,I] = max(psdest2.Data);
fprintf('Maximum for LRN occurs at %d Hz.\n',psdest2.Frequencies(I));
figure;plot(psdest2)
figure; psd(SMP,n_samples,sample_freq)

fprintf('LRN mean sum sum(dif) range: %.4f\t%i\t%i\t%i\n',mean(LRN),sum(LRN),sum(diff(LRN)),range(LRN));
fprintf('SMP mean sum sum(dif) range: %.4f\t%i\t%i\t%i\n',mean(SMP),sum(SMP),sum(diff(SMP)),range(SMP));


%% for some reason this did not work properly, the sin wave was not of the correct frequency
%hsin1 = dsp.SineWave(range(LRN)/2,psdest.Frequencies(I)*duration); %7.782 is the largest frequency of the LRN sequence? 9 means that we match up at the end of the sequence (b/c it is repeated 9 times within 1 trial)
hsin1 = dsp.SineWave(range(LRN)/2,.56*duration); %7.782 is the largest frequency of the LRN sequence? 9 means that we match up at the end of the sequence (b/c it is repeated 9 times within 1 trial)
hsin1.SamplesPerFrame = n_samples;
%hsin.Frequency=900;
y = step(hsin1);
%hold on;plot(SMP,'go')
SMP=ceil(y+mean(LRN)-mean(y)-.5); %center this on the force required for LRN, subtract the .5 fudgefactor to bring the means in line, and create whole numbers
figure; plot(SMP,'go','MarkerFace','g'); set(gcf,'Position',[528   550   983   190]); box off;
hold on; plot(LRN,'bo','MarkerFace','b'); set(gcf,'Position',[528   650   983   190]); box off;
x = detrend(SMP,0);
psdest2 = psd(spectrum.periodogram,x,'Fs',sample_freq,'NFFT',length(x));
[~,I] = max(psdest2.Data);
fprintf('Maximum for SMP occurs at %d Hz.\n',psdest2.Frequencies(I));
figure;plot(psdest2)
%%
%SMP=SMP-min(SMP)+min(LRN); %match up the max and min values as well

% THIS DOES NOT WORK, YOU WILL NEED TO FIND ANOTHER WAY OF DOING THIS
%SMP does not start and stop in the same place, so fix this
%check the point in the end where the first point is equal
start_idx=find(SMP(:)==SMP(1)); %list of locations of all that are equal to the start val
num_shift=(floor(length(SMP(start_idx(end):end))/2)); %number of elements required for a shift
SMP_new=circshift(SMP,num_shift);

% DO NOT USE SMP_new

figure;
plot(SMP,'go');
hold on;
plot(SMP_new,'ro');

figure;
plot(SMP, 'go'); hold on;
plot(LRN, 'bo');
