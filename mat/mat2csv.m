x1_17 = load('x1_17.mat');
x4_17 = load('x4_17.mat');
x6_17 = load('x6_17.mat');
yt1 = load('yt1.mat');
yt1.yt = yt1.yt.';
yt4 = load('yt4.mat');
yt4.yt = yt4.yt.';
yt6 = load('yt6.mat');
yt6.yt = yt6.yt.';
csvwrite('C:\Users\Iarah\Documents\GitHub\IA\x1.csv', x1_17.x);
csvwrite('C:\Users\Iarah\Documents\GitHub\IA\x4.csv', x4_17.x);
csvwrite('C:\Users\Iarah\Documents\GitHub\IA\x6.csv', x6_17.x);
csvwrite('C:\Users\Iarah\Documents\GitHub\IA\yt1.csv', yt1.yt);
csvwrite('C:\Users\Iarah\Documents\GitHub\IA\yt4.csv', yt4.yt);
csvwrite('C:\Users\Iarah\Documents\GitHub\IA\yt6.csv', yt6.yt);