BUILDDIR = build

output: $(BUILDDIR)/object.o
	ld -o $(BUILDDIR)/output $(BUILDDIR)/object.o

$(BUILDDIR)/object.o: video.S
	mkdir -p $(BUILDDIR)
	gcc -o $(BUILDDIR)/object.o -c video.S -g 

clean:
	rm -rf "$(BUILDDIR)"