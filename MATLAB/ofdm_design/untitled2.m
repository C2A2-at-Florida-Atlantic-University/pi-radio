fclose('all')
fopen('qammod_128','wt');
x=qammod(0:127,128)
for i=1:length(x)
    fprintf(file,"%f+j%f\n",real(x(i)),imag(x(i)));
end
fclose('all')