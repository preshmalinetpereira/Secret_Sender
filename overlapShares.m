

function [b] = overlapShares(r1, r2, r3, g1, g2, g3, b1, b2, b3, m, n, o, m1, m2, m3)

M=m1*m2*m3;
a1=M/m1;
a2=M/m2;
a3=M/m3;
red=zeros(m,n);
green=zeros(m,n);
blue=zeros(m,n);
b=zeros(m,n,o);
[d, q, a, b, f] = extendedEuclidean_forward(m1,a1);

[x, y] = extendedEuclidean_backSubstitution (d, q, a, b, f);
t1=y

[d, q, a, b, f] = extendedEuclidean_forward(m2,a2);
[x, y] = extendedEuclidean_backSubstitution (d, q, a, b, f);
t2=y

[d, q, a, b, f] = extendedEuclidean_forward(m3,a3);
[x, y] = extendedEuclidean_backSubstitution (d, q, a, b, f);
t3=y

 for i=1:m
    for j=1:n
       
        red(i,j)=mod((a1*t1*r1(i,j)+a2*t2*r2(i,j)+a3*t3*r3(i,j)),M);
        
    end
 end
figure, imshow(red), title('Red IMAGE');
 for i=1:m
    for j=1:n
       
        green(i,j)=mod((a1*t1*g1(i,j)+a2*t2*g2(i,j)+a3*t3*g3(i,j)),M);
        
    end
 end
figure, imshow(green), title('Green IMAGE');
 for i=1:m
    for j=1:n
       
        blue(i,j)=mod((a1*t1*b1(i,j)+a2*t2*b2(i,j)+a3*t3*b3(i,j)),M);
        
    end
 end
figure, imshow(blue), title('Blue IMAGE');
b=cat(3,red,green,blue);
figure, imshow(b), title('concatenated Overlap IMAGE'); 
b=im2double(b/255);
figure, imshow(b), title('Double Overlap IMAGE'); 
%{B=uint8(round(b*255))
%figure, imshow(B), title('uint8 Overlap IMAGE'); 
%b=round(b*255);
%figure, imshow(b), title('Rounded Overlap IMAGE'); 
%}
end
