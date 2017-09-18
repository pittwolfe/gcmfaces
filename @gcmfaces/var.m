function r = var(p,varargin)
%overloaded gcmfaces std function :
%  1) if single gcmfaces argument, then returns the global var over all faces
%  2) if more than one argument, then simply calls double var function for 
%     each face data, passing over the other arguments

if nargin==1
    tmp1  = zeros(p.nFaces,1);
    count = zeros(p.nFaces,1);
    for iFace=1:p.nFaces
        iF=num2str(iFace,'f%d');
        tmp1(iFace) = var(p.(iF)(:));
        count(iFace) = numel(p.(iF));
    end
    r = sum(tmp1.*count)/sum(count);
    return
end

r=p;

for iFace=1:r.nFaces
    iF=num2str(iFace,'f%d');
    r.(iF) = var(p.(iF), varargin{:}); 
end

