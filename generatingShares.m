
function [r1, r2, r3, g1, g2, g3, b1, b2, b3] = generatingShares(a, m, n, o, m1, m2, m3)


r1 = zeros(m,  n);
r2 = zeros(m,  n);
r3 = zeros(m,  n);
g1 = zeros(m,  n);
g2 = zeros(m,  n);
g3 = zeros(m,  n);
b1 = zeros(m,  n);
b2 = zeros(m,  n);
b3 = zeros(m,  n);

red=a(:,:,1);
figure, imshow(red), title('Red IMAGE'); 
green=a(:,:,2);
figure, imshow(green), title('Green IMAGE'); 
blue=a(:,:,3);
figure, imshow(blue), title('Blue IMAGE'); 

for i=1:m
    for j=1:n
        x=red(i,j);
        r1(i,j)=mod(x,m1);
        r2(i,j)=mod(x,m2);
        r3(i,j)=mod(x,m3);
    end
end

for i=1:m
    for j=1:n
        x=green(i,j);
        g1(i,j)=mod(x,m1);
        g2(i,j)=mod(x,m2);
        g3(i,j)=mod(x,m3);
    end
end

for i=1:m
    for j=1:n
        x=blue(i,j);
        b1(i,j)=mod(x,m1);
        b2(i,j)=mod(x,m2);
        b3(i,j)=mod(x,m3);
    end
end

%{
disp('share creation complete');
disp('Red 1');
figure; subplot(1,3,1);
imshow(r1), title('Red 1');
disp('Red 2');
subplot(1,3,2);
imshow(r2), title('Red 2');
disp('Red 3');
subplot(1,3,3);
imshow(r3), title('Red 3')
disp('Green 1');
figure; subplot(1,3,1);
imshow(g1), title('Green 1')
disp('Green 2');
subplot(1,3,2);
imshow(g2), title('Green 2')
disp('Green 3');
subplot(1,3,3);
imshow(g3), title('Green 3')
disp('Blue 1');
figure; subplot(1,3,1);
imshow(b1), title('Blue 1')
disp('Blue 2');
subplot(1,3,2);
imshow(b2), title('Blue 2')
disp('Blue 3');
subplot(1,3,3);
imshow(b3), title('Blue 3')
%}
end