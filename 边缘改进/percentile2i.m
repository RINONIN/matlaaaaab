function I=percentile2i(h,P)
%PERCENTILE2I Computes an intensity value given a percentile.
% I=PERCENTILE2I(H,P) Given a percentile ,p,and a histogram,
% H, this function computes an intensity ,I representing?
% the Pth percentile and returns the value ?in I. P must be in the?
% range [0,1] and I is returned as a value in the range [0,1] also.
% Example:
% I=percentile2i(h,0.5)

% Check value of P
if (P<0 || P>1)
 error('The percentile must be in the range [0,1].');
end

% Normalized the histogram to unit area.if it is already normalized
% the following computation has no effect.
h=h/sum(h);

% Camulative distribution
C=cumsum(h);
% Calculations.
idx=find(C>= P,1,'first');
% Subtract 1 from idx because indexing starts at 1,but intensities
% start at 0. Also ,normalize to the range [0,1].
I=(idx-1)/(numel(h)-1);
