function r = sign(p)
%overloaded gcmfaces sign function : 
%  simply calls double sign function for each face data

r=p;
for iFace=1:r.nFaces
   iF=num2str(iFace,'f%d'); 
   r.(iF) = sign(p.(iF)); 
end


