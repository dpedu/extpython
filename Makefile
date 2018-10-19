#!/usr/bin/make -f

PY3_SRC=./cpython/
PY3_CONFFLAGS=--prefix=$(DESTDIR)/opt/extpython/3.7.0 --with-ensurepip=install

all:
	cd $(PY3_SRC) && \
	./configure $(PY3_CONFFLAGS) && \
	make -j8

install:
	cd $(PY3_SRC) && \
	make install
	# $(DESTDIR)/opt/extpython/3.7.0/bin/python3 $(DESTDIR)/opt/extpython/3.7.0/bin/pip3 install -r requirements.txt

clean:
	cd $(PY3_SRC) && \
	make clean || true