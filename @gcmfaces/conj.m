function r = conj(p)
%overloaded gcmfaces conj function :
%  simply calls double conj function for each face data

r=p;

for iFace=1:r.nFaces
   iF=num2str(iFace,'f%d'); 
   r.(iF) = conj(p.(iF));
end


