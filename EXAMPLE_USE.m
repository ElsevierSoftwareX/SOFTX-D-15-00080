% EXAMPLE of use of SRC_Num_TDOA 
% 
%Author : Mariem BOUAFIF 
%Date: 23/07/2016 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copyright 2015-2016  Mariem BOUAFIF,and Zied LACHIRI
% This software is distributed under the terms of the The BSD 3-Clause License
% version 3 (http://www.gnu.org/licenses/gpl.txt)
% If you find it useful, please cite the following reference:
% Mariem BOUAFIF,and Zied LACHIRI "TDOA ESTIMATION FOR MULTIPLE SPEAKERS IN
% UNDERDETERMINED CASE" INTERSPEECH 2012 ISCA's 13th Annual Conference 
% Portland, OR, USA, September 9-13,pp 1748- 1951,2012
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Begin%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Input 
for i = 1:2
            x(:,i)= wavread(['WAV-files\Mic' int2str(i) '.wav']);        
end
% Number of speakers and TDOA estimation 
[num_spk_est taue] =  Src_Numb_TDOA(x,44.1,1);