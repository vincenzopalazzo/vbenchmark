CC=v
VFLAGS=-cc g++ -cg

default:
	$(CC) $(VFLAGS) .

fmt:
	$(CC) fmt

clean:
	rm vbenchmark