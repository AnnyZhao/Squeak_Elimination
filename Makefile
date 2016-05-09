.PHONY: all
all: main

main: main.c fft2.o kiss_fft.o
	$(CC) -O0 -g main.c fft2.o kiss_fft.o -lsndfile -o main

fft2.o: fft2.c
	$(CC) -O0 -g -c fft2.c -o fft2.o

kiss_fft.o: kiss_fft.c
	$(CC) -O0 -g -c kiss_fft.c -o kiss_fft.o

clean:
	rm -f *.o main output.wav

