CC=v
VFLAGS=-cc g++ -cg -autofree

default: fmt
	$(CC) $(VFLAGS) .

fmt:
	$(CC) -w fmt .

clean:
	rm vbenchmark
	rm c/*.out