clear all;
im = imread('Nix.jpg');
subplot(3,3,2),subimage(im)
tic
[PC, or] = phasecongmono(im,3,5,2.1,0.55);
nm = nonmaxsup(PC, or, 1.5);   % nonmaxima suppression
bw = hysthresh(nm, 0.4, 0.2);  % hysteresis thresholding 0.1 - 0.3
toc
tic
[PC2,m,or2] = phasecong3(im,3,6,5);
nm2 = nonmaxsup(PC2, or2, 1.5);   % nonmaxima suppression
bw2 = hysthresh(nm2, 0.2, 0.3);  % hysteresis thresholding 0.1 - 0.3
toc
subplot(3,3,4), subimage(PC)
subplot(3,3,5), subimage(nm)
subplot(3,3,6), subimage(bw)
subplot(3,3,7), subimage(PC2)
subplot(3,3,8), subimage(nm2)
subplot(3,3,9), subimage(bw2)