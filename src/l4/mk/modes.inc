# -*- Makefile -*-
# vim:et:ts=8:ft=make:
#
# Makefile-Include for defining modes

LIBC_INCLUDE   = $(BID_NOSTDINC)                                   \
                 -I$(OBJ_BASE)/include/uclibc                      \
                 $(if $(CONFIG_USE_DROPS_STDDIR),                  \
                  -I$(DROPS_STDDIR)/include/uclibc)                \
                 $(I_GCCINCDIR)

LIBCXX_INCLUDE = -I$(OBJ_BASE)/include/contrib/libstdc++-v3        \
                 $(if $(CONFIG_USE_DROPS_STDDIR),                  \
                   -I$(DROPS_STDDIR)/include/contrib/libstdc++-v3)

#############################################################################

################################
# sigma0 mode
################################

BID_SUPPORTED_all_sigma0        = y
LIBCINCDIR_all_sigma0           = $(LIBC_INCLUDE)
LDFLAGS_all_sigma0              = -static -gc-sections


################################
# static mode
################################

BID_SUPPORTED_all_static        = y
LIBCINCDIR_all_static           = $(LIBCXX_INCLUDE) $(LIBC_INCLUDE)
REQUIRES_LIBS_all_static        = stdlibs
LDFLAGS_all_static              = -static -gc-sections

#####################################
# shared mode -- programs are linked against shared libs
#####################################
BID_SUPPORTED_all_shared        = y
LIBCINCDIR_all_shared           = $(LIBCXX_INCLUDE) $(LIBC_INCLUDE)
REQUIRES_LIBS_all_shared        = stdlibs-sh
LDFLAGS_all_shared              = -gc-sections

################################
# l4linux mode
################################

BID_SUPPORTED_all_l4linux       = y
LIBCINCDIR_all_l4linux          =
REQUIRES_LIBS_all_l4linux       = 
LDFLAGS_all_l4linux             = -gc-sections

################################
# Targetsys mode
################################

BID_SUPPORTED_all_targetsys     = y
LDFLAGS_all_targetsys           = -gc-sections

#####################################
# lib mode -- options when building libs
#####################################

BID_SUPPORTED_all_lib = y
LIBCINCDIR_all_lib    = $(LIBCXX_INCLUDE) $(LIBC_INCLUDE)
LDFLAGS_all_lib       =


#####################################
# host mode -- no L4 specifics
#####################################

BID_SUPPORTED_all_host = y
LIBCINCDIR_all_host    =
REQUIRES_LIBS_all_host =
LDFLAGS_all_host       =
NOPICFLAGS_all_host   ?=
NOPIEFLAGS_all_host   ?=


#####################################
# assets building mode
#####################################

BID_SUPPORTED_all_assets = y
