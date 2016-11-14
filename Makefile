
ARCHIVE_URL=https://releases.hashicorp.com/consul/0.7.1/consul_0.7.1_linux_amd64.zip
ARCHIVE_FNAME=$(notdir $(ARCHIVE_URL))

all: $(ARCHIVE_FNAME)

$(ARCHIVE_FNAME):
	curl -O $(ARCHIVE_URL)

clean:
	rm -f $(ARCHIVE_FNAME)

install:
	echo $(ARCHIVE_FNAME)
	mkdir -p $(DESTDIR)/usr/bin
	unzip $(ARCHIVE_FNAME) -d $(DESTDIR)/usr/bin
