NAME := zx
CC := cargo build --release
INSTALL_DIR := /usr/local/bin
ODIR := target/release

show ::
	cat Makefile

build ::
	cargo build --release

install :: build
	mv $(ODIR)/$(NAME) $(INSTALL_DIR)
