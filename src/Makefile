#  build helloworld.c

helloworld: helloworld.o
	$(CC) $(LDFLAGS) helloworld.o -o helloworld
helloworld.o: helloworld.c
	$(CC) $(CFLAGS) -c helloworld.c

#make clean
clean:
	rm *.o helloworld

