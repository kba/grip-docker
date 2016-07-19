PREFIX=/usr/local
BINDIR=$(PREFIX)/bin

MKDIR = mkdir -p
RM = rm -vf
CP = cp -v

build:
	docker build -t 'kbai/grip' .

install:
	$(MKDIR) $(BINDIR)
	$(CP) -t $(BINDIR) grip-docker

uninstall:
	$(RM) $(BINDIR)/grip-docker
