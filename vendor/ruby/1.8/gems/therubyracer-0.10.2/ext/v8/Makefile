
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /Users/easander/.rvm/rubies/ruby-1.8.7-p370/lib/ruby/1.8/i686-darwin10.8.0
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
prefix = $(DESTDIR)/Users/easander/.rvm/rubies/ruby-1.8.7-p370
exec_prefix = $(prefix)
localedir = $(datarootdir)/locale
mandir = $(datarootdir)/man
rubylibdir = $(libdir)/ruby/$(ruby_version)
htmldir = $(docdir)
psdir = $(docdir)
libexecdir = $(exec_prefix)/libexec
datarootdir = $(prefix)/share
archdir = $(rubylibdir)/$(arch)
vendorarchdir = $(vendorlibdir)/$(sitearch)
includedir = $(prefix)/include
datadir = $(datarootdir)
oldincludedir = $(DESTDIR)/usr/include
sitelibdir = $(sitedir)/$(ruby_version)
sitearchdir = $(sitelibdir)/$(sitearch)
sbindir = $(exec_prefix)/sbin
infodir = $(datarootdir)/info
libdir = $(exec_prefix)/lib
sitedir = $(libdir)/ruby/site_ruby
localstatedir = $(prefix)/var
vendordir = $(libdir)/ruby/vendor_ruby
bindir = $(exec_prefix)/bin
dvidir = $(docdir)
docdir = $(datarootdir)/doc/$(PACKAGE)
sharedstatedir = $(prefix)/com
vendorlibdir = $(vendordir)/$(ruby_version)
pdfdir = $(docdir)
sysconfdir = $(prefix)/etc

CC = /usr/bin/gcc-4.2
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fno-common -g -O2  -fno-common -pipe -fno-common $(cflags) 
INCFLAGS = -I. -I/Users/easander/code/rails_projects/recstache/vendor/ruby/1.8/gems/libv8-3.3.10.4-x86-darwin-10/lib/libv8/v8/include -I. -I/Users/easander/.rvm/rubies/ruby-1.8.7-p370/lib/ruby/1.8/i686-darwin10.8.0 -I.
DEFS     = 
CPPFLAGS =   -D_XOPEN_SOURCE -D_DARWIN_C_SOURCE   -Wall -g -rdynamic
CXXFLAGS = $(CFLAGS) 
ldflags  = /Users/easander/code/rails_projects/recstache/vendor/ruby/1.8/gems/libv8-3.3.10.4-x86-darwin-10/lib/libv8/build/v8/libv8.a -L. 
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
LIBS = $(LIBRUBYARG_SHARED) -lobjc  -ldl -lobjc   -lpthread
SRCS = rr.cpp v8.cpp v8_array.cpp v8_callbacks.cpp v8_context.cpp v8_date.cpp v8_debug.cpp v8_exception.cpp v8_external.cpp v8_function.cpp v8_handle.cpp v8_locker.cpp v8_message.cpp v8_object.cpp v8_script.cpp v8_string.cpp v8_template.cpp v8_try_catch.cpp v8_v8.cpp v8_value.cpp v8_weakref.cpp
OBJS = rr.o v8.o v8_array.o v8_callbacks.o v8_context.o v8_date.o v8_debug.o v8_exception.o v8_external.o v8_function.o v8_handle.o v8_locker.o v8_message.o v8_object.o v8_script.o v8_string.o v8_template.o v8_try_catch.o v8_v8.o v8_value.o v8_weakref.o
TARGET = v8
DLLIB = $(TARGET).bundle
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /Users/easander/code/rails_projects/recstache/vendor/ruby/1.8/gems/therubyracer-0.10.2/lib$(target_prefix)
RUBYARCHDIR = /Users/easander/code/rails_projects/recstache/vendor/ruby/1.8/gems/therubyracer-0.10.2/lib$(target_prefix)

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
