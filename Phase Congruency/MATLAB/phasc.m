im = imread('lena.tif');
subplot(1,2,1),subimage(im)
tic
[PC, or] = phasecongmono(im,3,10,2.1,0.55);
nm = nonmaxsup(PC, or, 1.5);   % nonmaxima suppression
bw1 = hysthresh(nm, 0.1, 0.3);  % hysteresis thresholding 0.1 - 0.3
[PC, or] = phasecongmono(im,3,3,2.1,0.55);
nm = nonmaxsup(PC, or, 1.5);   % nonmaxima suppression
bw2 = hysthresh(nm, 0.1, 0.3);  % hysteresis thresholding 0.1 - 0.3
toc
b1=bw1+bw2;
subplot(1,2,2), subimage(bw)