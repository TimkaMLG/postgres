# contrib/my_nbtree/Makefile

MODULE_big = my_nbtree

OBJS = \
	$(WIN32RES) \
	my_nbtcompare.o \
	my_nbtdedup.o \
	my_nbtinsert.o \
	my_nbtpage.o \
	my_nbtree.o \
	my_nbtsearch.o \
	my_nbtsort.o \
	my_nbtsplitloc.o \
	my_nbtutils.o \
	my_nbtvalidate.o \
	my_nbtxlog.o


EXTENSION = my_nbtree
DATA = my_nbtree--1.0.sql
PGFILEDESC = "my_nbtree - my nbtree equivalent"

REGRESS = my_nbtree

TAP_TESTS = 1

SHLIB_LINK += $(filter -lm, $(LIBS))

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/my_nbtree
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
