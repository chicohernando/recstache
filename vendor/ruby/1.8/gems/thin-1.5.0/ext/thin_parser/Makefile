
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /Users/easander/.rvm/rubies/ruby-1.8.7-p370/lib/ruby/1.8/i686-darwin10.8.0
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
prefix = $(DESTDIR)/Users/easander/.rvm/rubies/ruby-1.8.7-p370
exec_prefix = $(prefix)
vendorlibdir = $(vendordir)/$(ruby_version)
archdir = $(rubylibdir)/$(arch)
datarootdir = $(prefix)/share
includedir = $(prefix)/include
datadir = $(datarootdir)
sharedstatedir = $(prefix)/com
libexecdir = $(exec_prefix)/libexec
pdfdir = $(docdir)
infodir = $(datarootdir)/info
htmldir = $(docdir)
oldincludedir = $(DESTDIR)/usr/include
bindir = $(exec_prefix)/bin
libdir = $(exec_prefix)/lib
sitearchdir = $(sitelibdir)/$(sitearch)
docdir = $(datarootdir)/doc/$(PACKAGE)
localedir = $(datarootdir)/locale
sysconfdir = $(prefix)/etc
dvidir = $(docdir)
sbindir = $(exec_prefix)/sbin
localstatedir = $(prefix)/var
psdir = $(docdir)
mandir = $(datarootdir)/man
vendorarchdir = $(vendorlibdir)/$(sitearch)
rubylibdir = $(libdir)/ruby/$(ruby_version)
sitelibdir = $(sitedir)/$(ruby_version)
sitedir = $(libdir)/ruby/site_ruby
vendordir = $(libdir)/ruby/vendor_ruby

CC = /usr/bin/gcc-4.2
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fno-common -g -O2  -fno-common -pipe -fno-common $(cflags) 
INCFLAGS = -I. -I. -I/Users/easander/.rvm/rubies/ruby-1.8.7-p370/lib/ruby/1.8/i686-darwin10.8.0 -I.
DEFS     = 
CPPFLAGS =   -D_XOPEN_SOURCE -D_DARWIN_C_SOURCE  
CXXFLAGS = $(CFLAGS) 
ldflags  = -L. 
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = cc -dynamic -bundle -undefined suppress -flat_namespace
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
arch = i686-darwin10.8.0
sitearch = i686-darwin10.8.0
ruby_version = 1.8
ruby = /Users/easander/.rvm/rubies/ruby-1.8.7-p370/bin/ruby
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED) -lc  -ldl -lobjc  
SRCS = parser.c thin.c
OBJS = parser.o thin.o
TARGET = thin_parser
DLLIB = $(TARGET).bundle
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /Users/easander/code/rails_projects/recstache/vendor/ruby/1.8/gems/thin-1.5.0/lib$(target_prefix)
RUBYARCHDIR = /Users/easander/code/rails_projects/recstache/vendor/ruby/1.8/gems/thin-1.5.0/lib$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).bundle $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
$(RUBYARCHDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): ruby.h defines.h
