CC=v
VFLAGS=-cc g++ -cg

default:
	$(CC) $(VFLAGS) .

clean:
	rm vbenchmark