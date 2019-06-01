#!/usr/bin/make -f

PY3_SRC=./cpython/
PY3_CONFFLAGS=--prefix=$(DESTDIR)/opt/extpython/_OPT_DIR_ --with-ensurepip=install
# --enable-optimizations

all:
	cd $(PY3_SRC) && \
	./configure $(PY3_CONFFLAGS) && \
	make -j8

install:
	cd $(PY3_SRC) && \
	make install
	# $(DESTDIR)/opt/extpython/3.7.0/bin/python3 $(DESTDIR)/opt/extpython/3.7/bin/pip3 install -r requirements.txt

clean:
	cd $(PY3_SRC) && \
	make clean || true
