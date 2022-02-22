CC=v
VFLAGS=-cc g++ -cg

default: fmt
	$(CC) $(VFLAGS) .

fmt:
	$(CC) fmt

clean:
	rm vbenchmark