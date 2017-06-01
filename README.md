GENERAL INFO

This Matlab code estimates the number of sources and their Time Differences of Arrival (TDOAs) in a stereo audio signal recorded by a pair of omnidirectional microphones.
The method is implemented:(Src_Numb_TDOA.m)

In order to apply this method, just type
[num_spk_est taue] =  Src_Numb_TDOA (x,fs,d)
where x is nsampl x 2 matrix containing a stereo signal, fs the sampling frequency in KHz, d the microphone spacing in meters. The output and num_spk_est is then the estimated number of sources, and taue is  the 1 x num_spk_est vector of estimated TDOAs in (ms).

For information about the syntax, type
help Src_Numb_TDOA


FULL VERSION
The full version of the code also contains the source signals and the mixing filters used for evaluation in the paper [1]
The algorithme is tested on real recorded convolutive mixtures in the directory /WAV-files registred by Mariem BOUAFIF,and Zied LACHIRI in a dolby 5.1 studio 
Wav files captured by the tow microphones are named Mic1.wav and Mic2.wav
The sampling rate fs = 44.1khz.
The distance between microphones d = 1m.
The studio set up is described in [1]
Wav files SPK_<i>.wav are extracted from TIMIT database and played simultaniously by three loudspeakers.<i> the loudspeaker's number.
To generate the signals used for evaluation, add the directories WAV-files to the Matlab path, and type
x(:,1)= wavread('Mic1.wav');
x(:,2)= wavread('Mic2.wav');

[num_spk_est taue] =  Src_Numb_TDOA(x,44.1,1)

REFERENCES

[1] Mariem BOUAFIF,and Zied LACHIRI "TDOA ESTIMATION FOR MULTIPLE SPEAKERS IN UNDERDETERMINED CASE" INTERSPEECH 2012 ISCA's 13th Annual Conference Portland,OR, USA, September 9-13,pp 1748- 1951,2012 OR, USA, September 9-13,pp 1748- 1951,2012


[2] Mariem Bouafif, Zied Lachiri SRC_Num_TDOA: Multiple speech sources’ number and their TDOA Estimation from a stereo recorded mixtureOriginal Research Article SoftwareX, Volume 5, 2016, Pages 234-242
