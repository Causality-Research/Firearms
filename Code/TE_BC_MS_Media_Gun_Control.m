% this code calculates TE Y-->X|Z using the nationa level background
% checks, mass shootings, and media output on gun control
clear

% the file data0.m contains raw data: mass shootings (ms), background
% checks (bc) (seasonally adjusted and de-trended), and media output (mo)
% the file then process the raw data and generates the symbols with ms, bc,
% and mo variables
data0 

N = length(bc); % total number of data pts

% the following calculation computes transfer entropy (TE) from Y to X
% while isolating Z
% TE Y-->X|Z
% Xt, Yt, Zt are assigned to time series symbols ms, bc, mo
% the user can assign bc, mo, ms differently to Xt, Yt, Zt to calculate TE
% for different combinations of the triad
Xt = bc;
Yt = mo;
Zt = ms;

eps = 1e-8; %smallest value above which probability is calculated

% set the following entropies to zero first
hxpxx = 0;
hxpxxx = 0;
hxx = 0;
hxxx = 0;

% the following 3 nested for-loops calculates hxx, hxxx,hxpxxx entropies
% via counting of events (0, 1) determined by indices xti, yti, zti
for xti = 0:1    
    for zti = 0:1
        
        % here we calculate the probability pxx, which is the number of counts for which Xt = xti, Zt = zti
        % divided by the number of samples
         pxx = length(find(Xt == xti & Zt == zti))/N;
         
         % if pxx is larger than epsilon (eps) then calculate the entropy
         if pxx>eps
             %summing Plog2(P) terms
            hxx = hxx - pxx*log2(pxx);
         end
         
         
        
        for yti = 0:1
            
            pxxx = length(find(Xt == xti & Yt == yti & Zt == zti))/N;
            
             if pxxx>eps
                hxxx = hxxx - pxxx*log2(pxxx);
             end
         
                       
            for xtpi = 0:1
            
            pxpxxx = length(find(Xt(2:end) == xtpi & Xt(1:end-1) == xti & Yt(1:end-1) == yti & Zt(1:end-1) == zti))/(N-1);
            
             if pxpxxx>eps
               hxpxxx = hxpxxx - pxpxxx*log2(pxpxxx);
             end
         
            
            
            end
        end
    end
end

% we calculate separately hxpxx using the following for-loops with a
% similar logic as in the above for-loops
for xtpi = 0:1
    for xti = 0:1
        for zti = 0:1
            pxpxx = length(find(Xt(2:end) == xtpi & Xt(1:end-1) == xti & Zt(1:end-1) == zti))/(N-1);
            
             if pxpxx>eps
                hxpxx = hxpxx - pxpxx*log2(pxpxx);
             end
         
          
        end
    end
end

% TE is formulated using four different entropies
TE = hxpxx - hxpxxx - hxx + hxxx

% we save the above TE value in order to later compare it with respect to
% the TE distribution obtained from the surrogate data
save TEreading TE