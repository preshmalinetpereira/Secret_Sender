clc;

a=imread('caken.jpg');
disp('original image');
figure, imshow(a), title('ORIGINAL IMAGE')
%c=makecform('srgb2lab');
%a=applycform(a,c);
%a=rgb2lab(a);
%figure, imshow(a), title('NO LAB IMAGE'); 
[m,n,o]=size(a);
m1=3;
m2=5;
m3=17;


[r1, r2, r3, g1, g2, g3, b1, b2, b3] = generatingShares(a, m, n, o, m1, m2, m3);

[b] = overlapShares(r1, r2, r3, g1, g2, g3, b1, b2, b3, m, n, o, m1, m2, m3);

%B=applycform(b,makecform('lab2srgb'));
%B=lab2rgb(b);

%figure, imshow(b), title('LAB Overlap IMAGE'); 
     % B=lab2rgb(b);
    figure, imshow(b), title('Final IMAGE');   