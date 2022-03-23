CC=v
VFLAGS=-cc g++ -g -keepc

default: fmt
	$(CC) $(VFLAGS) example/main.v

fmt:
	$(CC) -w fmt .

clean:
	rm vbenchmark
	rm c/*.out