N = 1024;
n = 0:N-1;

w0 = 0.4*pi;
x = sin(w0*n)+10*sin(2*w0*n);

s = spectrogram(x);

figure(3);

spectrogram(x,'yaxis');
%set(gca, 'Yscale','log');

