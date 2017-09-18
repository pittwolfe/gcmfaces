function r = acos(p)
%overloaded gcmfaces acos function :
%  simply calls double acos function for each face data

r=p;

for iFace=1:r.nFaces;
   iF = num2str(iFace,'f%d'); 
   r.(iF) = acos(p.(iF));
end;


