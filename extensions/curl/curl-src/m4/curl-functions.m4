#***************************************************************************
#                                  _   _ ____  _
#  Project                     ___| | | |  _ \| |
#                             / __| | | | |_) | |
#                            | (__| |_| |  _ <| |___
#                             \___|\___/|_| \_\_____|
#
# Copyright (C) 1998 - 2008, Daniel Stenberg, <daniel@haxx.se>, et al.
#
# This software is licensed as described in the file COPYING, which
# you should have received as part of this distribution. The terms
# are also available at http://curl.haxx.se/docs/copyright.html.
#
# You may opt to use, copy, modify, merge, publish, distribute and/or sell
# copies of the Software, and permit persons to whom the Software is
# furnished to do so, under the terms of the COPYING file.
#
# This software is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY
# KIND, either express or implied.
#
# $Id: curl-functions.m4,v 1.34 2008-11-08 03:27:16 yangtse Exp $
#***************************************************************************

# File version for 'aclocal' use. Keep it a single number.
# serial 34


dnl CURL_INCLUDES_ARPA_INET
dnl -------------------------------------------------
dnl Set up variable with list of headers that must be
dnl included when arpa/inet.h is to be included.

AC_DEFUN([CURL_INCLUDES_ARPA_INET], [
curl_includes_arpa_inet="\
/* includes start */
#ifdef HAVE_SYS_TYPES_H
#  include <sys/types.h>
#endif
#ifdef HAVE_SYS_SOCKET_H
#  include <sys/socket.h>
#endif
#ifdef HAVE_NETINET_IN_H
#  include <netinet/in.h>
#endif
#ifdef HAVE_ARPA_INET_H
#  include <arpa_inet.h>
#endif
/* includes end */"
  AC_CHECK_HEADERS(
    sys/types.h sys/socket.h netinet/in.h arpa/inet.h,
    [], [], [$curl_includes_arpa_inet])
])


dnl CURL_INCLUDES_IFADDRS
dnl -------------------------------------------------
dnl Set up variable with list of headers that must be
dnl included when ifaddrs.h is to be included.

AC_DEFUN([CURL_INCLUDES_IFADDRS], [
curl_includes_ifaddrs="\
/* includes start */
#ifdef HAVE_SYS_TYPES_H
#  include <sys/types.h>
#endif
#ifdef HAVE_SYS_SOCKET_H
#  include <sys/socket.h>
#endif
#ifdef HAVE_NETINET_IN_H
#  include <netinet/in.h>
#endif
#ifdef HAVE_IFADDRS_H
#  include <ifaddrs.h>
#endif
/* includes end */"
  AC_CHECK_HEADERS(
    sys/types.h sys/socket.h netinet/in.h ifaddrs.h,
    [], [], [$curl_includes_ifaddrs])
])


dnl CURL_INCLUDES_NETDB
dnl -------------------------------------------------
dnl Set up variable with list of headers that must be
dnl included when netdb.h is to be included.

AC_DEFUN([CURL_INCLUDES_NETDB], [
curl_includes_netdb="\
/* includes start */
#ifdef HAVE_SYS_TYPES_H
#  include <sys/types.h>
#endif
#ifdef HAVE_NETDB_H
#  include <netdb.h>
#endif
/* includes end */"
  AC_CHECK_HEADERS(
    sys/types.h netdb.h,
    [], [], [$curl_includes_netdb])
])


dnl CURL_INCLUDES_SETJMP
dnl -------------------------------------------------
dnl Set up variable with list of headers that must be
dnl included when setjmp.h is to be included.

AC_DEFUN([CURL_INCLUDES_SETJMP], [
curl_includes_setjmp="\
/* includes start */
#ifdef HAVE_SYS_TYPES_H
#  include <sys/types.h>
#endif
#ifdef HAVE_SETJMP_H
#  include <setjmp.h>
#endif
/* includes end */"
  AC_CHECK_HEADERS(
    sys/types.h setjmp.h,
    [], [], [$curl_includes_setjmp])
])


dnl CURL_INCLUDES_SIGNAL
dnl -------------------------------------------------
dnl Set up variable with list of headers that must be
dnl included when signal.h is to be included.

AC_DEFUN([CURL_INCLUDES_SIGNAL], [
curl_includes_signal="\
/* includes start */
#ifdef HAVE_SYS_TYPES_H
#  include <sys/types.h>
#endif
#ifdef HAVE_SIGNAL_H
#  include <signal.h>
#endif
/* includes end */"
  AC_CHECK_HEADERS(
    sys/types.h signal.h,
    [], [], [$curl_includes_signal])
])


dnl CURL_INCLUDES_STDIO
dnl -------------------------------------------------
dnl Set up variable with list of headers that must be
dnl included when stdio.h is to be included.

AC_DEFUN([CURL_INCLUDES_STDIO], [
curl_includes_stdio="\
/* includes start */
#ifdef HAVE_SYS_TYPES_H
#  include <sys/types.h>
#endif
#ifdef HAVE_STDIO_H
#  include <stdio.h>
#endif
/* includes end */"
  AC_CHECK_HEADERS(
    sys/types.h stdio.h,
    [], [], [$curl_includes_stdio])
])


dnl CURL_INCLUDES_STDLIB
dnl -------------------------------------------------
dnl Set up variable with list of headers that must be
dnl included when stdlib.h is to be included.

AC_DEFUN([CURL_INCLUDES_STDLIB], [
curl_includes_stdlib="\
/* includes start */
#ifdef HAVE_SYS_TYPES_H
#  include <sys/types.h>
#endif
#ifdef HAVE_STDLIB_H
#  include <stdlib.h>
#endif
/* includes end */"
  AC_CHECK_HEADERS(
    sys/types.h stdlib.h,
    [], [], [$curl_includes_stdlib])
])


dnl CURL_INCLUDES_STRING
dnl -------------------------------------------------
dnl Set up variable with list of headers that must be
dnl included when string(s).h is to be included.

AC_DEFUN([CURL_INCLUDES_STRING], [
curl_includes_string="\
/* includes start */
#ifdef HAVE_SYS_TYPES_H
#  include <sys/types.h>
#endif
#ifdef HAVE_STRING_H
#  include <string.h>
#endif
#ifdef HAVE_STRINGS_H
#  include <strings.h>
#endif
/* includes end */"
  AC_CHECK_HEADERS(
    sys/types.h string.h strings.h,
    [], [], [$curl_includes_string])
])


dnl CURL_INCLUDES_SYS_SOCKET
dnl -------------------------------------------------
dnl Set up variable with list of headers that must be
dnl included when sys/socket.h is to be included.

AC_DEFUN([CURL_INCLUDES_SYS_SOCKET], [
curl_includes_sys_socket="\
/* includes start */
#ifdef HAVE_SYS_TYPES_H
#  include <sys/types.h>
#endif
#ifdef HAVE_SYS_SOCKET_H
#  include <sys/socket.h>
#endif
/* includes end */"
  AC_CHECK_HEADERS(
    sys/types.h sys/socket.h,
    [], [], [$curl_includes_sys_socket])
])


dnl CURL_INCLUDES_SYS_UIO
dnl -------------------------------------------------
dnl Set up variable with list of headers that must be
dnl included when sys/uio.h is to be included.

AC_DEFUN([CURL_INCLUDES_SYS_UIO], [
curl_includes_sys_uio="\
/* includes start */
#ifdef HAVE_SYS_TYPES_H
#  include <sys/types.h>
#endif
#ifdef HAVE_SYS_UIO_H
#  include <sys/uio.h>
#endif
/* includes end */"
  AC_CHECK_HEADERS(
    sys/types.h sys/uio.h,
    [], [], [$curl_includes_sys_uio])
])


dnl CURL_INCLUDES_TIME
dnl -------------------------------------------------
dnl Set up variable with list of headers that must be
dnl included when time.h is to be included.

AC_DEFUN([CURL_INCLUDES_TIME], [
AC_REQUIRE([AC_HEADER_TIME])dnl
curl_includes_time="\
/* includes start */
#ifdef HAVE_SYS_TYPES_H
#  include <sys/types.h>
#endif
#ifdef HAVE_SYS_TIME_H
#  include <sys/time.h>
#  ifdef TIME_WITH_SYS_TIME
#    include <time.h>
#  endif
#else
#  ifdef HAVE_TIME_H
#    include <time.h>
#  endif
#endif
/* includes end */"
  AC_CHECK_HEADERS(
    sys/types.h sys/time.h time.h,
    [], [], [$curl_includes_time])
])


dnl CURL_INCLUDES_UNISTD
dnl -------------------------------------------------
dnl Set up variable with list of headers that must be
dnl included when unistd.h is to be included.

AC_DEFUN([CURL_INCLUDES_UNISTD], [
curl_includes_unistd="\
/* includes start */
#ifdef HAVE_SYS_TYPES_H
#  include <sys/types.h>
#endif
#ifdef HAVE_UNISTD_H
#  include <unistd.h>
#endif
/* includes end */"
  AC_CHECK_HEADERS(
    sys/types.h unistd.h,
    [], [], [$curl_includes_unistd])
])


dnl CURL_INCLUDES_WINSOCK2
dnl -------------------------------------------------
dnl Set up variable with list of headers that must be
dnl included when winsock(2).h is to be included.

AC_DEFUN([CURL_INCLUDES_WINSOCK2], [
curl_includes_winsock2="\
/* includes start */
#ifdef HAVE_WINDOWS_H
#  ifndef WIN32_LEAN_AND_MEAN
#    define WIN32_LEAN_AND_MEAN
#  endif
#  include <windows.h>
#  ifdef HAVE_WINSOCK2_H
#    include <winsock2.h>
#  else
#    ifdef HAVE_WINSOCK_H
#      include <winsock.h>
#    endif
#  endif
#endif
/* includes end */"
  CURL_CHECK_HEADER_WINDOWS
  CURL_CHECK_HEADER_WINSOCK
  CURL_CHECK_HEADER_WINSOCK2
])


dnl CURL_INCLUDES_WS2TCPIP
dnl -------------------------------------------------
dnl Set up variable with list of headers that must be
dnl included when ws2tcpip.h is to be included.

AC_DEFUN([CURL_INCLUDES_WS2TCPIP], [
curl_includes_ws2tcpip="\
/* includes start */
#ifdef HAVE_WINDOWS_H
#  ifndef WIN32_LEAN_AND_MEAN
#    define WIN32_LEAN_AND_MEAN
#  endif
#  include <windows.h>
#  ifdef HAVE_WINSOCK2_H
#    include <winsock2.h>
#    ifdef HAVE_WS2TCPIP_H
#       include <ws2tcpip.h>
#    endif
#  endif
#endif
/* includes end */"
  CURL_CHECK_HEADER_WINDOWS
  CURL_CHECK_HEADER_WINSOCK2
  CURL_CHECK_HEADER_WS2TCPIP
])


dnl CURL_CHECK_FUNC_ALARM
dnl -------------------------------------------------
dnl Verify if alarm is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_alarm, then
dnl HAVE_ALARM will be defined.

AC_DEFUN([CURL_CHECK_FUNC_ALARM], [
  AC_REQUIRE([CURL_INCLUDES_UNISTD])dnl
  #
  tst_links_alarm="unknown"
  tst_proto_alarm="unknown"
  tst_compi_alarm="unknown"
  tst_allow_alarm="unknown"
  #
  AC_MSG_CHECKING([if alarm can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([alarm])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_alarm="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_alarm="no"
  ])
  #
  if test "$tst_links_alarm" = "yes"; then
    AC_MSG_CHECKING([if alarm is prototyped])
    AC_EGREP_CPP([alarm],[
      $curl_includes_unistd
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_alarm="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_alarm="no"
    ])
  fi
  #
  if test "$tst_proto_alarm" = "yes"; then
    AC_MSG_CHECKING([if alarm is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_unistd
      ]],[[
        if(0 != alarm(0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_alarm="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_alarm="no"
    ])
  fi
  #
  if test "$tst_compi_alarm" = "yes"; then
    AC_MSG_CHECKING([if alarm usage allowed])
    if test "x$curl_disallow_alarm" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_alarm="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_alarm="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if alarm might be used])
  if test "$tst_links_alarm" = "yes" &&
     test "$tst_proto_alarm" = "yes" &&
     test "$tst_compi_alarm" = "yes" &&
     test "$tst_allow_alarm" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_ALARM, 1,
      [Define to 1 if you have the alarm function.])
    ac_cv_func_alarm="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_alarm="no"
  fi
])


dnl CURL_CHECK_FUNC_FDOPEN
dnl -------------------------------------------------
dnl Verify if fdopen is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_fdopen, then
dnl HAVE_FDOPEN will be defined.

AC_DEFUN([CURL_CHECK_FUNC_FDOPEN], [
  AC_REQUIRE([CURL_INCLUDES_STDIO])dnl
  #
  tst_links_fdopen="unknown"
  tst_proto_fdopen="unknown"
  tst_compi_fdopen="unknown"
  tst_allow_fdopen="unknown"
  #
  AC_MSG_CHECKING([if fdopen can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([fdopen])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_fdopen="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_fdopen="no"
  ])
  #
  if test "$tst_links_fdopen" = "yes"; then
    AC_MSG_CHECKING([if fdopen is prototyped])
    AC_EGREP_CPP([fdopen],[
      $curl_includes_stdio
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_fdopen="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_fdopen="no"
    ])
  fi
  #
  if test "$tst_proto_fdopen" = "yes"; then
    AC_MSG_CHECKING([if fdopen is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_stdio
      ]],[[
        if(0 != fdopen(0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_fdopen="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_fdopen="no"
    ])
  fi
  #
  if test "$tst_compi_fdopen" = "yes"; then
    AC_MSG_CHECKING([if fdopen usage allowed])
    if test "x$curl_disallow_fdopen" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_fdopen="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_fdopen="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if fdopen might be used])
  if test "$tst_links_fdopen" = "yes" &&
     test "$tst_proto_fdopen" = "yes" &&
     test "$tst_compi_fdopen" = "yes" &&
     test "$tst_allow_fdopen" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_FDOPEN, 1,
      [Define to 1 if you have the fdopen function.])
    ac_cv_func_fdopen="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_fdopen="no"
  fi
])


dnl CURL_CHECK_FUNC_FREEADDRINFO
dnl -------------------------------------------------
dnl Verify if freeaddrinfo is available, prototyped,
dnl and can be compiled. If all of these are true,
dnl and usage has not been previously disallowed with
dnl shell variable curl_disallow_freeaddrinfo, then
dnl HAVE_FREEADDRINFO will be defined.

AC_DEFUN([CURL_CHECK_FUNC_FREEADDRINFO], [
  AC_REQUIRE([CURL_INCLUDES_WS2TCPIP])dnl
  AC_REQUIRE([CURL_INCLUDES_SYS_SOCKET])dnl
  AC_REQUIRE([CURL_INCLUDES_NETDB])dnl
  #
  tst_links_freeaddrinfo="unknown"
  tst_proto_freeaddrinfo="unknown"
  tst_compi_freeaddrinfo="unknown"
  tst_allow_freeaddrinfo="unknown"
  #
  AC_MSG_CHECKING([if freeaddrinfo can be linked])
  AC_LINK_IFELSE([
    AC_LANG_PROGRAM([[
      $curl_includes_ws2tcpip
      $curl_includes_sys_socket
      $curl_includes_netdb
    ]],[[
      freeaddrinfo(0);
    ]])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_freeaddrinfo="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_freeaddrinfo="no"
  ])
  #
  if test "$tst_links_freeaddrinfo" = "yes"; then
    AC_MSG_CHECKING([if freeaddrinfo is prototyped])
    AC_EGREP_CPP([freeaddrinfo],[
      $curl_includes_ws2tcpip
      $curl_includes_sys_socket
      $curl_includes_netdb
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_freeaddrinfo="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_freeaddrinfo="no"
    ])
  fi
  #
  if test "$tst_proto_freeaddrinfo" = "yes"; then
    AC_MSG_CHECKING([if freeaddrinfo is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_ws2tcpip
        $curl_includes_sys_socket
        $curl_includes_netdb
      ]],[[
        freeaddrinfo(0);
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_freeaddrinfo="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_freeaddrinfo="no"
    ])
  fi
  #
  if test "$tst_compi_freeaddrinfo" = "yes"; then
    AC_MSG_CHECKING([if freeaddrinfo usage allowed])
    if test "x$curl_disallow_freeaddrinfo" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_freeaddrinfo="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_freeaddrinfo="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if freeaddrinfo might be used])
  if test "$tst_links_freeaddrinfo" = "yes" &&
     test "$tst_proto_freeaddrinfo" = "yes" &&
     test "$tst_compi_freeaddrinfo" = "yes" &&
     test "$tst_allow_freeaddrinfo" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_FREEADDRINFO, 1,
      [Define to 1 if you have the freeaddrinfo function.])
    ac_cv_func_freeaddrinfo="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_freeaddrinfo="no"
  fi
])


dnl CURL_CHECK_FUNC_FREEIFADDRS
dnl -------------------------------------------------
dnl Verify if freeifaddrs is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_freeifaddrs, then
dnl HAVE_FREEIFADDRS will be defined.

AC_DEFUN([CURL_CHECK_FUNC_FREEIFADDRS], [
  AC_REQUIRE([CURL_INCLUDES_IFADDRS])dnl
  #
  tst_links_freeifaddrs="unknown"
  tst_proto_freeifaddrs="unknown"
  tst_compi_freeifaddrs="unknown"
  tst_allow_freeifaddrs="unknown"
  #
  AC_MSG_CHECKING([if freeifaddrs can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([freeifaddrs])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_freeifaddrs="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_freeifaddrs="no"
  ])
  #
  if test "$tst_links_freeifaddrs" = "yes"; then
    AC_MSG_CHECKING([if freeifaddrs is prototyped])
    AC_EGREP_CPP([freeifaddrs],[
      $curl_includes_ifaddrs
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_freeifaddrs="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_freeifaddrs="no"
    ])
  fi
  #
  if test "$tst_proto_freeifaddrs" = "yes"; then
    AC_MSG_CHECKING([if freeifaddrs is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_ifaddrs
      ]],[[
        freeifaddrs(0);
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_freeifaddrs="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_freeifaddrs="no"
    ])
  fi
  #
  if test "$tst_compi_freeifaddrs" = "yes"; then
    AC_MSG_CHECKING([if freeifaddrs usage allowed])
    if test "x$curl_disallow_freeifaddrs" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_freeifaddrs="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_freeifaddrs="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if freeifaddrs might be used])
  if test "$tst_links_freeifaddrs" = "yes" &&
     test "$tst_proto_freeifaddrs" = "yes" &&
     test "$tst_compi_freeifaddrs" = "yes" &&
     test "$tst_allow_freeifaddrs" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_FREEIFADDRS, 1,
      [Define to 1 if you have the freeifaddrs function.])
    ac_cv_func_freeifaddrs="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_freeifaddrs="no"
  fi
])


dnl CURL_CHECK_FUNC_FTRUNCATE
dnl -------------------------------------------------
dnl Verify if ftruncate is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_ftruncate, then
dnl HAVE_FTRUNCATE will be defined.

AC_DEFUN([CURL_CHECK_FUNC_FTRUNCATE], [
  AC_REQUIRE([CURL_INCLUDES_UNISTD])dnl
  #
  tst_links_ftruncate="unknown"
  tst_proto_ftruncate="unknown"
  tst_compi_ftruncate="unknown"
  tst_allow_ftruncate="unknown"
  #
  AC_MSG_CHECKING([if ftruncate can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([ftruncate])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_ftruncate="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_ftruncate="no"
  ])
  #
  if test "$tst_links_ftruncate" = "yes"; then
    AC_MSG_CHECKING([if ftruncate is prototyped])
    AC_EGREP_CPP([ftruncate],[
      $curl_includes_unistd
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_ftruncate="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_ftruncate="no"
    ])
  fi
  #
  if test "$tst_proto_ftruncate" = "yes"; then
    AC_MSG_CHECKING([if ftruncate is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_unistd
      ]],[[
        if(0 != ftruncate(0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_ftruncate="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_ftruncate="no"
    ])
  fi
  #
  if test "$tst_compi_ftruncate" = "yes"; then
    AC_MSG_CHECKING([if ftruncate usage allowed])
    if test "x$curl_disallow_ftruncate" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_ftruncate="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_ftruncate="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if ftruncate might be used])
  if test "$tst_links_ftruncate" = "yes" &&
     test "$tst_proto_ftruncate" = "yes" &&
     test "$tst_compi_ftruncate" = "yes" &&
     test "$tst_allow_ftruncate" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_FTRUNCATE, 1,
      [Define to 1 if you have the ftruncate function.])
    ac_cv_func_ftruncate="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_ftruncate="no"
  fi
])


dnl CURL_CHECK_FUNC_GETADDRINFO
dnl -------------------------------------------------
dnl Verify if getaddrinfo is available, prototyped, can
dnl be compiled and seems to work. If all of these are
dnl true, and usage has not been previously disallowed
dnl with shell variable curl_disallow_getaddrinfo, then
dnl HAVE_GETADDRINFO will be defined.

AC_DEFUN([CURL_CHECK_FUNC_GETADDRINFO], [
  AC_REQUIRE([CURL_INCLUDES_WS2TCPIP])dnl
  AC_REQUIRE([CURL_INCLUDES_STDLIB])dnl
  AC_REQUIRE([CURL_INCLUDES_SYS_SOCKET])dnl
  AC_REQUIRE([CURL_INCLUDES_NETDB])dnl
  #
  tst_links_getaddrinfo="unknown"
  tst_proto_getaddrinfo="unknown"
  tst_compi_getaddrinfo="unknown"
  tst_works_getaddrinfo="unknown"
  tst_allow_getaddrinfo="unknown"
  #
  AC_MSG_CHECKING([if getaddrinfo can be linked])
  AC_LINK_IFELSE([
    AC_LANG_PROGRAM([[
      $curl_includes_ws2tcpip
      $curl_includes_sys_socket
      $curl_includes_netdb
    ]],[[
      if(0 != getaddrinfo(0, 0, 0, 0))
        return 1;
    ]])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_getaddrinfo="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_getaddrinfo="no"
  ])
  #
  if test "$tst_links_getaddrinfo" = "yes"; then
    AC_MSG_CHECKING([if getaddrinfo is prototyped])
    AC_EGREP_CPP([getaddrinfo],[
      $curl_includes_ws2tcpip
      $curl_includes_sys_socket
      $curl_includes_netdb
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_getaddrinfo="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_getaddrinfo="no"
    ])
  fi
  #
  if test "$tst_proto_getaddrinfo" = "yes"; then
    AC_MSG_CHECKING([if getaddrinfo is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_ws2tcpip
        $curl_includes_sys_socket
        $curl_includes_netdb
      ]],[[
        if(0 != getaddrinfo(0, 0, 0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_getaddrinfo="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_getaddrinfo="no"
    ])
  fi
  #
  dnl only do runtime verification when not cross-compiling
  if test "x$cross_compiling" != "xyes" &&
    test "$tst_compi_getaddrinfo" = "yes"; then
    AC_MSG_CHECKING([if getaddrinfo seems to work])
    AC_RUN_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_ws2tcpip
        $curl_includes_stdlib
        $curl_includes_sys_socket
        $curl_includes_netdb
      ]],[[
        struct addrinfo hints;
        struct addrinfo *ai = 0;
        int error;

        memset(&hints, 0, sizeof(hints));
        hints.ai_flags = AI_NUMERICHOST;
        hints.ai_family = AF_UNSPEC;
        hints.ai_socktype = SOCK_STREAM;
        error = getaddrinfo("127.0.0.1", 0, &hints, &ai);
        if(error || !ai)
          exit(1); /* fail */
        else
          exit(0);
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_works_getaddrinfo="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_works_getaddrinfo="no"
    ])
  fi
  #
  if test "$tst_compi_getaddrinfo" = "yes" &&
    test "$tst_works_getaddrinfo" != "no"; then
    AC_MSG_CHECKING([if getaddrinfo usage allowed])
    if test "x$curl_disallow_getaddrinfo" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_getaddrinfo="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_getaddrinfo="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if getaddrinfo might be used])
  if test "$tst_links_getaddrinfo" = "yes" &&
     test "$tst_proto_getaddrinfo" = "yes" &&
     test "$tst_compi_getaddrinfo" = "yes" &&
     test "$tst_allow_getaddrinfo" = "yes" &&
     test "$tst_works_getaddrinfo" != "no"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_GETADDRINFO, 1,
      [Define to 1 if you have a working getaddrinfo function.])
    ac_cv_func_getaddrinfo="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_getaddrinfo="no"
  fi
])


dnl CURL_CHECK_FUNC_GETHOSTBYADDR_R
dnl -------------------------------------------------
dnl Verify if gethostbyaddr_r is available, prototyped,
dnl and can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_gethostbyaddr_r, then
dnl HAVE_GETHOSTBYADDR_R will be defined.

AC_DEFUN([CURL_CHECK_FUNC_GETHOSTBYADDR_R], [
  AC_REQUIRE([CURL_INCLUDES_NETDB])dnl
  #
  tst_links_gethostbyaddr_r="unknown"
  tst_proto_gethostbyaddr_r="unknown"
  tst_compi_gethostbyaddr_r="unknown"
  tst_allow_gethostbyaddr_r="unknown"
  tst_nargs_gethostbyaddr_r="unknown"
  #
  AC_MSG_CHECKING([if gethostbyaddr_r can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([gethostbyaddr_r])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_gethostbyaddr_r="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_gethostbyaddr_r="no"
  ])
  #
  if test "$tst_links_gethostbyaddr_r" = "yes"; then
    AC_MSG_CHECKING([if gethostbyaddr_r is prototyped])
    AC_EGREP_CPP([gethostbyaddr_r],[
      $curl_includes_netdb
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_gethostbyaddr_r="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_gethostbyaddr_r="no"
    ])
  fi
  #
  if test "$tst_proto_gethostbyaddr_r" = "yes"; then
    if test "$tst_nargs_gethostbyaddr_r" = "unknown"; then
      AC_MSG_CHECKING([if gethostbyaddr_r takes 5 args.])
      AC_COMPILE_IFELSE([
        AC_LANG_PROGRAM([[
          $curl_includes_netdb
        ]],[[
          if(0 != gethostbyaddr_r(0, 0, 0, 0, 0))
            return 1;
        ]])
      ],[
        AC_MSG_RESULT([yes])
        tst_compi_gethostbyaddr_r="yes"
        tst_nargs_gethostbyaddr_r="5"
      ],[
        AC_MSG_RESULT([no])
        tst_compi_gethostbyaddr_r="no"
      ])
    fi
    if test "$tst_nargs_gethostbyaddr_r" = "unknown"; then
      AC_MSG_CHECKING([if gethostbyaddr_r takes 7 args.])
      AC_COMPILE_IFELSE([
        AC_LANG_PROGRAM([[
          $curl_includes_netdb
        ]],[[
          if(0 != gethostbyaddr_r(0, 0, 0, 0, 0, 0, 0))
            return 1;
        ]])
      ],[
        AC_MSG_RESULT([yes])
        tst_compi_gethostbyaddr_r="yes"
        tst_nargs_gethostbyaddr_r="7"
      ],[
        AC_MSG_RESULT([no])
        tst_compi_gethostbyaddr_r="no"
      ])
    fi
    if test "$tst_nargs_gethostbyaddr_r" = "unknown"; then
      AC_MSG_CHECKING([if gethostbyaddr_r takes 8 args.])
      AC_COMPILE_IFELSE([
        AC_LANG_PROGRAM([[
          $curl_includes_netdb
        ]],[[
          if(0 != gethostbyaddr_r(0, 0, 0, 0, 0, 0, 0, 0))
            return 1;
        ]])
      ],[
        AC_MSG_RESULT([yes])
        tst_compi_gethostbyaddr_r="yes"
        tst_nargs_gethostbyaddr_r="8"
      ],[
        AC_MSG_RESULT([no])
        tst_compi_gethostbyaddr_r="no"
      ])
    fi
    AC_MSG_CHECKING([if gethostbyaddr_r is compilable])
    if test "$tst_compi_gethostbyaddr_r" = "yes"; then
      AC_MSG_RESULT([yes])
    else
      AC_MSG_RESULT([no])
    fi
  fi
  #
  if test "$tst_compi_gethostbyaddr_r" = "yes"; then
    AC_MSG_CHECKING([if gethostbyaddr_r usage allowed])
    if test "x$curl_disallow_gethostbyaddr_r" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_gethostbyaddr_r="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_gethostbyaddr_r="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if gethostbyaddr_r might be used])
  if test "$tst_links_gethostbyaddr_r" = "yes" &&
     test "$tst_proto_gethostbyaddr_r" = "yes" &&
     test "$tst_compi_gethostbyaddr_r" = "yes" &&
     test "$tst_allow_gethostbyaddr_r" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_GETHOSTBYADDR_R, 1,
      [Define to 1 if you have the gethostbyaddr_r function.])
    dnl AC_DEFINE_UNQUOTED(GETHOSTBYADDR_R_ARGS, $tst_nargs_gethostbyaddr_r,
    dnl   [Specifies the number of arguments to gethostbyaddr_r])
    #
    if test "$tst_nargs_gethostbyaddr_r" -eq "5"; then
      AC_DEFINE(HAVE_GETHOSTBYADDR_R_5, 1, [gethostbyaddr_r() takes 5 args])
    elif test "$tst_nargs_gethostbyaddr_r" -eq "7"; then
      AC_DEFINE(HAVE_GETHOSTBYADDR_R_7, 1, [gethostbyaddr_r() takes 7 args])
    elif test "$tst_nargs_gethostbyaddr_r" -eq "8"; then
      AC_DEFINE(HAVE_GETHOSTBYADDR_R_8, 1, [gethostbyaddr_r() takes 8 args])
    fi
    #
    ac_cv_func_gethostbyaddr_r="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_gethostbyaddr_r="no"
  fi
])


dnl CURL_CHECK_FUNC_GETHOSTBYNAME_R
dnl -------------------------------------------------
dnl Verify if gethostbyname_r is available, prototyped,
dnl and can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_gethostbyname_r, then
dnl HAVE_GETHOSTBYNAME_R will be defined.

AC_DEFUN([CURL_CHECK_FUNC_GETHOSTBYNAME_R], [
  AC_REQUIRE([CURL_INCLUDES_NETDB])dnl
  #
  tst_links_gethostbyname_r="unknown"
  tst_proto_gethostbyname_r="unknown"
  tst_compi_gethostbyname_r="unknown"
  tst_allow_gethostbyname_r="unknown"
  tst_nargs_gethostbyname_r="unknown"
  #
  AC_MSG_CHECKING([if gethostbyname_r can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([gethostbyname_r])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_gethostbyname_r="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_gethostbyname_r="no"
  ])
  #
  if test "$tst_links_gethostbyname_r" = "yes"; then
    AC_MSG_CHECKING([if gethostbyname_r is prototyped])
    AC_EGREP_CPP([gethostbyname_r],[
      $curl_includes_netdb
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_gethostbyname_r="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_gethostbyname_r="no"
    ])
  fi
  #
  if test "$tst_proto_gethostbyname_r" = "yes"; then
    if test "$tst_nargs_gethostbyname_r" = "unknown"; then
      AC_MSG_CHECKING([if gethostbyname_r takes 3 args.])
      AC_COMPILE_IFELSE([
        AC_LANG_PROGRAM([[
          $curl_includes_netdb
        ]],[[
          if(0 != gethostbyname_r(0, 0, 0))
            return 1;
        ]])
      ],[
        AC_MSG_RESULT([yes])
        tst_compi_gethostbyname_r="yes"
        tst_nargs_gethostbyname_r="3"
      ],[
        AC_MSG_RESULT([no])
        tst_compi_gethostbyname_r="no"
      ])
    fi
    if test "$tst_nargs_gethostbyname_r" = "unknown"; then
      AC_MSG_CHECKING([if gethostbyname_r takes 5 args.])
      AC_COMPILE_IFELSE([
        AC_LANG_PROGRAM([[
          $curl_includes_netdb
        ]],[[
          if(0 != gethostbyname_r(0, 0, 0, 0, 0))
            return 1;
        ]])
      ],[
        AC_MSG_RESULT([yes])
        tst_compi_gethostbyname_r="yes"
        tst_nargs_gethostbyname_r="5"
      ],[
        AC_MSG_RESULT([no])
        tst_compi_gethostbyname_r="no"
      ])
    fi
    if test "$tst_nargs_gethostbyname_r" = "unknown"; then
      AC_MSG_CHECKING([if gethostbyname_r takes 6 args.])
      AC_COMPILE_IFELSE([
        AC_LANG_PROGRAM([[
          $curl_includes_netdb
        ]],[[
          if(0 != gethostbyname_r(0, 0, 0, 0, 0, 0))
            return 1;
        ]])
      ],[
        AC_MSG_RESULT([yes])
        tst_compi_gethostbyname_r="yes"
        tst_nargs_gethostbyname_r="6"
      ],[
        AC_MSG_RESULT([no])
        tst_compi_gethostbyname_r="no"
      ])
    fi
    AC_MSG_CHECKING([if gethostbyname_r is compilable])
    if test "$tst_compi_gethostbyname_r" = "yes"; then
      AC_MSG_RESULT([yes])
    else
      AC_MSG_RESULT([no])
    fi
  fi
  #
  if test "$tst_compi_gethostbyname_r" = "yes"; then
    AC_MSG_CHECKING([if gethostbyname_r usage allowed])
    if test "x$curl_disallow_gethostbyname_r" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_gethostbyname_r="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_gethostbyname_r="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if gethostbyname_r might be used])
  if test "$tst_links_gethostbyname_r" = "yes" &&
     test "$tst_proto_gethostbyname_r" = "yes" &&
     test "$tst_compi_gethostbyname_r" = "yes" &&
     test "$tst_allow_gethostbyname_r" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_GETHOSTBYNAME_R, 1,
      [Define to 1 if you have the gethostbyname_r function.])
    dnl AC_DEFINE_UNQUOTED(GETHOSTBYNAME_R_ARGS, $tst_nargs_gethostbyname_r,
    dnl   [Specifies the number of arguments to gethostbyname_r])
    #
    if test "$tst_nargs_gethostbyname_r" -eq "3"; then
      AC_DEFINE(HAVE_GETHOSTBYNAME_R_3, 1, [gethostbyname_r() takes 3 args])
    elif test "$tst_nargs_gethostbyname_r" -eq "5"; then
      AC_DEFINE(HAVE_GETHOSTBYNAME_R_5, 1, [gethostbyname_r() takes 5 args])
    elif test "$tst_nargs_gethostbyname_r" -eq "6"; then
      AC_DEFINE(HAVE_GETHOSTBYNAME_R_6, 1, [gethostbyname_r() takes 6 args])
    fi
    #
    ac_cv_func_gethostbyname_r="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_gethostbyname_r="no"
  fi
])


dnl CURL_CHECK_FUNC_GETHOSTNAME
dnl -------------------------------------------------
dnl Verify if gethostname is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_gethostname, then
dnl HAVE_GETHOSTNAME will be defined.

AC_DEFUN([CURL_CHECK_FUNC_GETHOSTNAME], [
  AC_REQUIRE([CURL_INCLUDES_WINSOCK2])dnl
  AC_REQUIRE([CURL_INCLUDES_UNISTD])dnl
  #
  tst_links_gethostname="unknown"
  tst_proto_gethostname="unknown"
  tst_compi_gethostname="unknown"
  tst_allow_gethostname="unknown"
  #
  AC_MSG_CHECKING([if gethostname can be linked])
  AC_LINK_IFELSE([
    AC_LANG_PROGRAM([[
      $curl_includes_winsock2
      $curl_includes_unistd
    ]],[[
      if(0 != gethostname(0, 0))
        return 1;
    ]])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_gethostname="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_gethostname="no"
  ])
  #
  if test "$tst_links_gethostname" = "yes"; then
    AC_MSG_CHECKING([if gethostname is prototyped])
    AC_EGREP_CPP([gethostname],[
      $curl_includes_winsock2
      $curl_includes_unistd
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_gethostname="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_gethostname="no"
    ])
  fi
  #
  if test "$tst_proto_gethostname" = "yes"; then
    AC_MSG_CHECKING([if gethostname is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_winsock2
        $curl_includes_unistd
      ]],[[
        if(0 != gethostname(0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_gethostname="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_gethostname="no"
    ])
  fi
  #
  if test "$tst_compi_gethostname" = "yes"; then
    AC_MSG_CHECKING([if gethostname usage allowed])
    if test "x$curl_disallow_gethostname" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_gethostname="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_gethostname="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if gethostname might be used])
  if test "$tst_links_gethostname" = "yes" &&
     test "$tst_proto_gethostname" = "yes" &&
     test "$tst_compi_gethostname" = "yes" &&
     test "$tst_allow_gethostname" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_GETHOSTNAME, 1,
      [Define to 1 if you have the gethostname function.])
    ac_cv_func_gethostname="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_gethostname="no"
  fi
])


dnl CURL_CHECK_FUNC_GETIFADDRS
dnl -------------------------------------------------
dnl Verify if getifaddrs is available, prototyped, can
dnl be compiled and seems to work. If all of these are
dnl true, and usage has not been previously disallowed
dnl with shell variable curl_disallow_getifaddrs, then
dnl HAVE_GETIFADDRS will be defined.

AC_DEFUN([CURL_CHECK_FUNC_GETIFADDRS], [
  AC_REQUIRE([CURL_INCLUDES_IFADDRS])dnl
  #
  tst_links_getifaddrs="unknown"
  tst_proto_getifaddrs="unknown"
  tst_compi_getifaddrs="unknown"
  tst_works_getifaddrs="unknown"
  tst_allow_getifaddrs="unknown"
  #
  AC_MSG_CHECKING([if getifaddrs can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([getifaddrs])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_getifaddrs="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_getifaddrs="no"
  ])
  #
  if test "$tst_links_getifaddrs" = "yes"; then
    AC_MSG_CHECKING([if getifaddrs is prototyped])
    AC_EGREP_CPP([getifaddrs],[
      $curl_includes_ifaddrs
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_getifaddrs="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_getifaddrs="no"
    ])
  fi
  #
  if test "$tst_proto_getifaddrs" = "yes"; then
    AC_MSG_CHECKING([if getifaddrs is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_ifaddrs
      ]],[[
        if(0 != getifaddrs(0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_getifaddrs="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_getifaddrs="no"
    ])
  fi
  #
  dnl only do runtime verification when not cross-compiling
  if test "x$cross_compiling" != "xyes" &&
    test "$tst_compi_getifaddrs" = "yes"; then
    AC_MSG_CHECKING([if getifaddrs seems to work])
    AC_RUN_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_ifaddrs
      ]],[[
        struct ifaddrs *ifa = 0;
        int error;

        error = getifaddrs(&ifa);
        if(error || !ifa)
          exit(1); /* fail */
        else
          exit(0);
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_works_getifaddrs="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_works_getifaddrs="no"
    ])
  fi
  #
  if test "$tst_compi_getifaddrs" = "yes" &&
    test "$tst_works_getifaddrs" != "no"; then
    AC_MSG_CHECKING([if getifaddrs usage allowed])
    if test "x$curl_disallow_getifaddrs" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_getifaddrs="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_getifaddrs="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if getifaddrs might be used])
  if test "$tst_links_getifaddrs" = "yes" &&
     test "$tst_proto_getifaddrs" = "yes" &&
     test "$tst_compi_getifaddrs" = "yes" &&
     test "$tst_allow_getifaddrs" = "yes" &&
     test "$tst_works_getifaddrs" != "no"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_GETIFADDRS, 1,
      [Define to 1 if you have a working getifaddrs function.])
    ac_cv_func_getifaddrs="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_getifaddrs="no"
  fi
])


dnl CURL_CHECK_FUNC_GETSERVBYPORT_R
dnl -------------------------------------------------
dnl Verify if getservbyport_r is available, prototyped,
dnl and can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_getservbyport_r, then
dnl HAVE_GETSERVBYPORT_R will be defined.

AC_DEFUN([CURL_CHECK_FUNC_GETSERVBYPORT_R], [
  AC_REQUIRE([CURL_INCLUDES_NETDB])dnl
  #
  tst_links_getservbyport_r="unknown"
  tst_proto_getservbyport_r="unknown"
  tst_compi_getservbyport_r="unknown"
  tst_allow_getservbyport_r="unknown"
  tst_nargs_getservbyport_r="unknown"
  #
  AC_MSG_CHECKING([if getservbyport_r can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([getservbyport_r])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_getservbyport_r="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_getservbyport_r="no"
  ])
  #
  if test "$tst_links_getservbyport_r" = "yes"; then
    AC_MSG_CHECKING([if getservbyport_r is prototyped])
    AC_EGREP_CPP([getservbyport_r],[
      $curl_includes_netdb
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_getservbyport_r="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_getservbyport_r="no"
    ])
  fi
  #
  if test "$tst_proto_getservbyport_r" = "yes"; then
    if test "$tst_nargs_getservbyport_r" = "unknown"; then
      AC_MSG_CHECKING([if getservbyport_r takes 4 args.])
      AC_COMPILE_IFELSE([
        AC_LANG_PROGRAM([[
          $curl_includes_netdb
        ]],[[
          if(0 != getservbyport_r(0, 0, 0, 0))
            return 1;
        ]])
      ],[
        AC_MSG_RESULT([yes])
        tst_compi_getservbyport_r="yes"
        tst_nargs_getservbyport_r="4"
      ],[
        AC_MSG_RESULT([no])
        tst_compi_getservbyport_r="no"
      ])
    fi
    if test "$tst_nargs_getservbyport_r" = "unknown"; then
      AC_MSG_CHECKING([if getservbyport_r takes 5 args.])
      AC_COMPILE_IFELSE([
        AC_LANG_PROGRAM([[
          $curl_includes_netdb
        ]],[[
          if(0 != getservbyport_r(0, 0, 0, 0, 0))
            return 1;
        ]])
      ],[
        AC_MSG_RESULT([yes])
        tst_compi_getservbyport_r="yes"
        tst_nargs_getservbyport_r="5"
      ],[
        AC_MSG_RESULT([no])
        tst_compi_getservbyport_r="no"
      ])
    fi
    if test "$tst_nargs_getservbyport_r" = "unknown"; then
      AC_MSG_CHECKING([if getservbyport_r takes 6 args.])
      AC_COMPILE_IFELSE([
        AC_LANG_PROGRAM([[
          $curl_includes_netdb
        ]],[[
          if(0 != getservbyport_r(0, 0, 0, 0, 0, 0))
            return 1;
        ]])
      ],[
        AC_MSG_RESULT([yes])
        tst_compi_getservbyport_r="yes"
        tst_nargs_getservbyport_r="6"
      ],[
        AC_MSG_RESULT([no])
        tst_compi_getservbyport_r="no"
      ])
    fi
    AC_MSG_CHECKING([if getservbyport_r is compilable])
    if test "$tst_compi_getservbyport_r" = "yes"; then
      AC_MSG_RESULT([yes])
    else
      AC_MSG_RESULT([no])
    fi
  fi
  #
  if test "$tst_compi_getservbyport_r" = "yes"; then
    AC_MSG_CHECKING([if getservbyport_r usage allowed])
    if test "x$curl_disallow_getservbyport_r" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_getservbyport_r="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_getservbyport_r="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if getservbyport_r might be used])
  if test "$tst_links_getservbyport_r" = "yes" &&
     test "$tst_proto_getservbyport_r" = "yes" &&
     test "$tst_compi_getservbyport_r" = "yes" &&
     test "$tst_allow_getservbyport_r" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_GETSERVBYPORT_R, 1,
      [Define to 1 if you have the getservbyport_r function.])
    AC_DEFINE_UNQUOTED(GETSERVBYPORT_R_ARGS, $tst_nargs_getservbyport_r,
      [Specifies the number of arguments to getservbyport_r])
    if test "$tst_nargs_getservbyport_r" -eq "4"; then
      AC_DEFINE(GETSERVBYPORT_R_BUFSIZE, sizeof(struct servent_data),
        [Specifies the size of the buffer to pass to getservbyport_r])
    else
      AC_DEFINE(GETSERVBYPORT_R_BUFSIZE, 4096,
        [Specifies the size of the buffer to pass to getservbyport_r])
    fi
    ac_cv_func_getservbyport_r="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_getservbyport_r="no"
  fi
])


dnl CURL_CHECK_FUNC_GMTIME_R
dnl -------------------------------------------------
dnl Verify if gmtime_r is available, prototyped, can
dnl be compiled and seems to work. If all of these are
dnl true, and usage has not been previously disallowed
dnl with shell variable curl_disallow_gmtime_r, then
dnl HAVE_GMTIME_R will be defined.

AC_DEFUN([CURL_CHECK_FUNC_GMTIME_R], [
  AC_REQUIRE([CURL_INCLUDES_STDLIB])dnl
  AC_REQUIRE([CURL_INCLUDES_TIME])dnl
  #
  tst_links_gmtime_r="unknown"
  tst_proto_gmtime_r="unknown"
  tst_compi_gmtime_r="unknown"
  tst_works_gmtime_r="unknown"
  tst_allow_gmtime_r="unknown"
  #
  AC_MSG_CHECKING([if gmtime_r can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([gmtime_r])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_gmtime_r="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_gmtime_r="no"
  ])
  #
  if test "$tst_links_gmtime_r" = "yes"; then
    AC_MSG_CHECKING([if gmtime_r is prototyped])
    AC_EGREP_CPP([gmtime_r],[
      $curl_includes_time
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_gmtime_r="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_gmtime_r="no"
    ])
  fi
  #
  if test "$tst_proto_gmtime_r" = "yes"; then
    AC_MSG_CHECKING([if gmtime_r is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_time
      ]],[[
        if(0 != gmtime_r(0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_gmtime_r="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_gmtime_r="no"
    ])
  fi
  #
  dnl only do runtime verification when not cross-compiling
  if test "x$cross_compiling" != "xyes" &&
    test "$tst_compi_gmtime_r" = "yes"; then
    AC_MSG_CHECKING([if gmtime_r seems to work])
    AC_RUN_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_stdlib
        $curl_includes_time
      ]],[[
        time_t local = 1170352587;
        struct tm *gmt = 0;
        struct tm result;
        gmt = gmtime_r(&local, &result);
        if(gmt)
          exit(0);
        else
          exit(1);
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_works_gmtime_r="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_works_gmtime_r="no"
    ])
  fi
  #
  if test "$tst_compi_gmtime_r" = "yes" &&
    test "$tst_works_gmtime_r" != "no"; then
    AC_MSG_CHECKING([if gmtime_r usage allowed])
    if test "x$curl_disallow_gmtime_r" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_gmtime_r="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_gmtime_r="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if gmtime_r might be used])
  if test "$tst_links_gmtime_r" = "yes" &&
     test "$tst_proto_gmtime_r" = "yes" &&
     test "$tst_compi_gmtime_r" = "yes" &&
     test "$tst_allow_gmtime_r" = "yes" &&
     test "$tst_works_gmtime_r" != "no"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_GMTIME_R, 1,
      [Define to 1 if you have a working gmtime_r function.])
    ac_cv_func_gmtime_r="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_gmtime_r="no"
  fi
])


dnl CURL_CHECK_FUNC_INET_NTOA_R
dnl -------------------------------------------------
dnl Verify if inet_ntoa_r is available, prototyped,
dnl and can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_inet_ntoa_r, then
dnl HAVE_INET_NTOA_R will be defined.

AC_DEFUN([CURL_CHECK_FUNC_INET_NTOA_R], [
  AC_REQUIRE([CURL_INCLUDES_ARPA_INET])dnl
  #
  tst_links_inet_ntoa_r="unknown"
  tst_proto_inet_ntoa_r="unknown"
  tst_compi_inet_ntoa_r="unknown"
  tst_allow_inet_ntoa_r="unknown"
  tst_nargs_inet_ntoa_r="unknown"
  #
  AC_MSG_CHECKING([if inet_ntoa_r can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([inet_ntoa_r])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_inet_ntoa_r="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_inet_ntoa_r="no"
  ])
  #
  if test "$tst_links_inet_ntoa_r" = "yes"; then
    AC_MSG_CHECKING([if inet_ntoa_r is prototyped])
    AC_EGREP_CPP([inet_ntoa_r],[
      $curl_includes_arpa_inet
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_inet_ntoa_r="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_inet_ntoa_r="no"
    ])
  fi
  #
  if test "$tst_proto_inet_ntoa_r" = "yes"; then
    if test "$tst_nargs_inet_ntoa_r" = "unknown"; then
      AC_MSG_CHECKING([if inet_ntoa_r takes 2 args.])
      AC_COMPILE_IFELSE([
        AC_LANG_PROGRAM([[
          $curl_includes_arpa_inet
        ]],[[
          struct in_addr addr;
          if(0 != inet_ntoa_r(addr, 0))
            return 1;
        ]])
      ],[
        AC_MSG_RESULT([yes])
        tst_compi_inet_ntoa_r="yes"
        tst_nargs_inet_ntoa_r="2"
      ],[
        AC_MSG_RESULT([no])
        tst_compi_inet_ntoa_r="no"
      ])
    fi
    if test "$tst_nargs_inet_ntoa_r" = "unknown"; then
      AC_MSG_CHECKING([if inet_ntoa_r takes 3 args.])
      AC_COMPILE_IFELSE([
        AC_LANG_PROGRAM([[
          $curl_includes_arpa_inet
        ]],[[
          struct in_addr addr;
          if(0 != inet_ntoa_r(addr, 0, 0))
            return 1;
        ]])
      ],[
        AC_MSG_RESULT([yes])
        tst_compi_inet_ntoa_r="yes"
        tst_nargs_inet_ntoa_r="3"
      ],[
        AC_MSG_RESULT([no])
        tst_compi_inet_ntoa_r="no"
      ])
    fi
    AC_MSG_CHECKING([if inet_ntoa_r is compilable])
    if test "$tst_compi_inet_ntoa_r" = "yes"; then
      AC_MSG_RESULT([yes])
    else
      AC_MSG_RESULT([no])
    fi
  fi
  #
  if test "$tst_compi_inet_ntoa_r" = "yes"; then
    AC_MSG_CHECKING([if inet_ntoa_r usage allowed])
    if test "x$curl_disallow_inet_ntoa_r" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_inet_ntoa_r="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_inet_ntoa_r="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if inet_ntoa_r might be used])
  if test "$tst_links_inet_ntoa_r" = "yes" &&
     test "$tst_proto_inet_ntoa_r" = "yes" &&
     test "$tst_compi_inet_ntoa_r" = "yes" &&
     test "$tst_allow_inet_ntoa_r" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_INET_NTOA_R, 1,
      [Define to 1 if you have the inet_ntoa_r function.])
    dnl AC_DEFINE_UNQUOTED(INET_NTOA_R_ARGS, $tst_nargs_inet_ntoa_r,
    dnl   [Specifies the number of arguments to inet_ntoa_r])
    #
    if test "$tst_nargs_inet_ntoa_r" -eq "2"; then
      AC_DEFINE(HAVE_INET_NTOA_R_2, 1, [inet_ntoa_r() takes 2 args])
    elif test "$tst_nargs_inet_ntoa_r" -eq "3"; then
      AC_DEFINE(HAVE_INET_NTOA_R_3, 1, [inet_ntoa_r() takes 3 args])
    fi
    #
    ac_cv_func_inet_ntoa_r="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_inet_ntoa_r="no"
  fi
])


dnl CURL_CHECK_FUNC_INET_NTOP
dnl -------------------------------------------------
dnl Verify if inet_ntop is available, prototyped, can
dnl be compiled and seems to work. If all of these are
dnl true, and usage has not been previously disallowed
dnl with shell variable curl_disallow_inet_ntop, then
dnl HAVE_INET_NTOP will be defined.

AC_DEFUN([CURL_CHECK_FUNC_INET_NTOP], [
  AC_REQUIRE([CURL_INCLUDES_STDLIB])dnl
  AC_REQUIRE([CURL_INCLUDES_ARPA_INET])dnl
  AC_REQUIRE([CURL_INCLUDES_STRING])dnl
  #
  tst_links_inet_ntop="unknown"
  tst_proto_inet_ntop="unknown"
  tst_compi_inet_ntop="unknown"
  tst_works_inet_ntop="unknown"
  tst_allow_inet_ntop="unknown"
  #
  AC_MSG_CHECKING([if inet_ntop can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([inet_ntop])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_inet_ntop="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_inet_ntop="no"
  ])
  #
  if test "$tst_links_inet_ntop" = "yes"; then
    AC_MSG_CHECKING([if inet_ntop is prototyped])
    AC_EGREP_CPP([inet_ntop],[
      $curl_includes_arpa_inet
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_inet_ntop="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_inet_ntop="no"
    ])
  fi
  #
  if test "$tst_proto_inet_ntop" = "yes"; then
    AC_MSG_CHECKING([if inet_ntop is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_arpa_inet
      ]],[[
        if(0 != inet_ntop(0, 0, 0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_inet_ntop="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_inet_ntop="no"
    ])
  fi
  #
  dnl only do runtime verification when not cross-compiling
  if test "x$cross_compiling" != "xyes" &&
    test "$tst_compi_inet_ntop" = "yes"; then
    AC_MSG_CHECKING([if inet_ntop seems to work])
    AC_RUN_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_stdlib
        $curl_includes_arpa_inet
        $curl_includes_string
      ]],[[
        char ipv6res[sizeof("ffff:ffff:ffff:ffff:ffff:ffff:255.255.255.255")];
        char ipv4res[sizeof "255.255.255.255"];
        unsigned char ipv6a[26];
        unsigned char ipv4a[5];
        char *ipv6ptr = 0;
        char *ipv4ptr = 0;
        /* - */
        ipv4res[0] = '\0';
        ipv4a[0] = 0xc0;
        ipv4a[1] = 0xa8;
        ipv4a[2] = 0x64;
        ipv4a[3] = 0x01;
        ipv4a[4] = 0x01;
        /* - */
        ipv4ptr = inet_ntop(AF_INET, ipv4a, ipv4res, sizeof(ipv4res));
        if(!ipv4ptr)
          exit(1); /* fail */
        if(ipv4ptr != ipv4res)
          exit(1); /* fail */
        if(!ipv4ptr[0])
          exit(1); /* fail */
        if(memcmp(ipv4res, "192.168.100.1", 13) != 0)
          exit(1); /* fail */
        /* - */
        ipv6res[0] = '\0';
        memset(ipv6a, 0, sizeof(ipv6a));
        ipv6a[0] = 0xfe;
        ipv6a[1] = 0x80;
        ipv6a[8] = 0x02;
        ipv6a[9] = 0x14;
        ipv6a[10] = 0x4f;
        ipv6a[11] = 0xff;
        ipv6a[12] = 0xfe;
        ipv6a[13] = 0x0b;
        ipv6a[14] = 0x76;
        ipv6a[15] = 0xc8;
        ipv6a[25] = 0x01;
        /* - */
        ipv6ptr = inet_ntop(AF_INET6, ipv6a, ipv6res, sizeof(ipv6res));
        if(!ipv6ptr)
          exit(1); /* fail */
        if(ipv6ptr != ipv6res)
          exit(1); /* fail */
        if(!ipv6ptr[0])
          exit(1); /* fail */
        if(memcmp(ipv6res, "fe80::214:4fff:fe0b:76c8", 24) != 0)
          exit(1); /* fail */
        /* - */
        exit(0);
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_works_inet_ntop="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_works_inet_ntop="no"
    ])
  fi
  #
  if test "$tst_compi_inet_ntop" = "yes" &&
    test "$tst_works_inet_ntop" != "no"; then
    AC_MSG_CHECKING([if inet_ntop usage allowed])
    if test "x$curl_disallow_inet_ntop" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_inet_ntop="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_inet_ntop="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if inet_ntop might be used])
  if test "$tst_links_inet_ntop" = "yes" &&
     test "$tst_proto_inet_ntop" = "yes" &&
     test "$tst_compi_inet_ntop" = "yes" &&
     test "$tst_allow_inet_ntop" = "yes" &&
     test "$tst_works_inet_ntop" != "no"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_INET_NTOP, 1,
      [Define to 1 if you have a IPv6 capable working inet_ntop function.])
    ac_cv_func_inet_ntop="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_inet_ntop="no"
  fi
])


dnl CURL_CHECK_FUNC_INET_PTON
dnl -------------------------------------------------
dnl Verify if inet_pton is available, prototyped, can
dnl be compiled and seems to work. If all of these are
dnl true, and usage has not been previously disallowed
dnl with shell variable curl_disallow_inet_pton, then
dnl HAVE_INET_PTON will be defined.

AC_DEFUN([CURL_CHECK_FUNC_INET_PTON], [
  AC_REQUIRE([CURL_INCLUDES_STDLIB])dnl
  AC_REQUIRE([CURL_INCLUDES_ARPA_INET])dnl
  AC_REQUIRE([CURL_INCLUDES_STRING])dnl
  #
  tst_links_inet_pton="unknown"
  tst_proto_inet_pton="unknown"
  tst_compi_inet_pton="unknown"
  tst_works_inet_pton="unknown"
  tst_allow_inet_pton="unknown"
  #
  AC_MSG_CHECKING([if inet_pton can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([inet_pton])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_inet_pton="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_inet_pton="no"
  ])
  #
  if test "$tst_links_inet_pton" = "yes"; then
    AC_MSG_CHECKING([if inet_pton is prototyped])
    AC_EGREP_CPP([inet_pton],[
      $curl_includes_arpa_inet
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_inet_pton="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_inet_pton="no"
    ])
  fi
  #
  if test "$tst_proto_inet_pton" = "yes"; then
    AC_MSG_CHECKING([if inet_pton is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_arpa_inet
      ]],[[
        if(0 != inet_pton(0, 0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_inet_pton="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_inet_pton="no"
    ])
  fi
  #
  dnl only do runtime verification when not cross-compiling
  if test "x$cross_compiling" != "xyes" &&
    test "$tst_compi_inet_pton" = "yes"; then
    AC_MSG_CHECKING([if inet_pton seems to work])
    AC_RUN_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_stdlib
        $curl_includes_arpa_inet
        $curl_includes_string
      ]],[[
        unsigned char ipv6a[26];
        unsigned char ipv4a[5];
        const char *ipv6src = "fe80::214:4fff:fe0b:76c8";
        const char *ipv4src = "192.168.100.1";
        /* - */
        memset(ipv4a, 1, sizeof(ipv4a));
        if(1 != inet_pton(AF_INET, ipv4src, ipv4a))
          exit(1); /* fail */
        /* - */
        if( (ipv4a[0] != 0xc0) ||
            (ipv4a[1] != 0xa8) ||
            (ipv4a[2] != 0x64) ||
            (ipv4a[3] != 0x01) ||
            (ipv4a[4] != 0x01) )
          exit(1); /* fail */
        /* - */
        memset(ipv6a, 1, sizeof(ipv6a));
        if(1 != inet_pton(AF_INET6, ipv6src, ipv6a))
          exit(1); /* fail */
        /* - */
        ipv6res[0] = '\0';
        memset(ipv6a, 0, sizeof(ipv6a));
        if( (ipv6a[0]  != 0xfe) ||
            (ipv6a[1]  != 0x80) ||
            (ipv6a[8]  != 0x02) ||
            (ipv6a[9]  != 0x14) ||
            (ipv6a[10] != 0x4f) ||
            (ipv6a[11] != 0xff) ||
            (ipv6a[12] != 0xfe) ||
            (ipv6a[13] != 0x0b) ||
            (ipv6a[14] != 0x76) ||
            (ipv6a[15] != 0xc8) ||
            (ipv6a[25] != 0x01) )
          exit(1); /* fail */
        /* - */
        if( (ipv6a[2]  != 0x0) ||
            (ipv6a[3]  != 0x0) ||
            (ipv6a[4]  != 0x0) ||
            (ipv6a[5]  != 0x0) ||
            (ipv6a[6]  != 0x0) ||
            (ipv6a[7]  != 0x0) ||
            (ipv6a[16] != 0x0) ||
            (ipv6a[17] != 0x0) ||
            (ipv6a[18] != 0x0) ||
            (ipv6a[19] != 0x0) ||
            (ipv6a[20] != 0x0) ||
            (ipv6a[21] != 0x0) ||
            (ipv6a[22] != 0x0) ||
            (ipv6a[23] != 0x0) ||
            (ipv6a[24] != 0x0) )
          exit(1); /* fail */
        /* - */
        exit(0);
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_works_inet_pton="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_works_inet_pton="no"
    ])
  fi
  #
  if test "$tst_compi_inet_pton" = "yes" &&
    test "$tst_works_inet_pton" != "no"; then
    AC_MSG_CHECKING([if inet_pton usage allowed])
    if test "x$curl_disallow_inet_pton" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_inet_pton="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_inet_pton="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if inet_pton might be used])
  if test "$tst_links_inet_pton" = "yes" &&
     test "$tst_proto_inet_pton" = "yes" &&
     test "$tst_compi_inet_pton" = "yes" &&
     test "$tst_allow_inet_pton" = "yes" &&
     test "$tst_works_inet_pton" != "no"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_INET_PTON, 1,
      [Define to 1 if you have a IPv6 capable working inet_pton function.])
    ac_cv_func_inet_pton="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_inet_pton="no"
  fi
])


dnl CURL_CHECK_FUNC_LOCALTIME_R
dnl -------------------------------------------------
dnl Verify if localtime_r is available, prototyped, can
dnl be compiled and seems to work. If all of these are
dnl true, and usage has not been previously disallowed
dnl with shell variable curl_disallow_localtime_r, then
dnl HAVE_LOCALTIME_R will be defined.

AC_DEFUN([CURL_CHECK_FUNC_LOCALTIME_R], [
  AC_REQUIRE([CURL_INCLUDES_STDLIB])dnl
  AC_REQUIRE([CURL_INCLUDES_TIME])dnl
  #
  tst_links_localtime_r="unknown"
  tst_proto_localtime_r="unknown"
  tst_compi_localtime_r="unknown"
  tst_works_localtime_r="unknown"
  tst_allow_localtime_r="unknown"
  #
  AC_MSG_CHECKING([if localtime_r can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([localtime_r])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_localtime_r="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_localtime_r="no"
  ])
  #
  if test "$tst_links_localtime_r" = "yes"; then
    AC_MSG_CHECKING([if localtime_r is prototyped])
    AC_EGREP_CPP([localtime_r],[
      $curl_includes_time
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_localtime_r="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_localtime_r="no"
    ])
  fi
  #
  if test "$tst_proto_localtime_r" = "yes"; then
    AC_MSG_CHECKING([if localtime_r is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_time
      ]],[[
        if(0 != localtime_r(0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_localtime_r="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_localtime_r="no"
    ])
  fi
  #
  dnl only do runtime verification when not cross-compiling
  if test "x$cross_compiling" != "xyes" &&
    test "$tst_compi_localtime_r" = "yes"; then
    AC_MSG_CHECKING([if localtime_r seems to work])
    AC_RUN_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_stdlib
        $curl_includes_time
      ]],[[
        time_t clock = 1170352587;
        struct tm *tmp = 0;
        struct tm result;
        tmp = localtime_r(&clock, &result);
        if(tmp)
          exit(0);
        else
          exit(1);
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_works_localtime_r="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_works_localtime_r="no"
    ])
  fi
  #
  if test "$tst_compi_localtime_r" = "yes" &&
    test "$tst_works_localtime_r" != "no"; then
    AC_MSG_CHECKING([if localtime_r usage allowed])
    if test "x$curl_disallow_localtime_r" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_localtime_r="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_localtime_r="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if localtime_r might be used])
  if test "$tst_links_localtime_r" = "yes" &&
     test "$tst_proto_localtime_r" = "yes" &&
     test "$tst_compi_localtime_r" = "yes" &&
     test "$tst_allow_localtime_r" = "yes" &&
     test "$tst_works_localtime_r" != "no"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_LOCALTIME_R, 1,
      [Define to 1 if you have a working localtime_r function.])
    ac_cv_func_localtime_r="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_localtime_r="no"
  fi
])


dnl CURL_CHECK_FUNC_SIGACTION
dnl -------------------------------------------------
dnl Verify if sigaction is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_sigaction, then
dnl HAVE_SIGACTION will be defined.

AC_DEFUN([CURL_CHECK_FUNC_SIGACTION], [
  AC_REQUIRE([CURL_INCLUDES_SIGNAL])dnl
  #
  tst_links_sigaction="unknown"
  tst_proto_sigaction="unknown"
  tst_compi_sigaction="unknown"
  tst_allow_sigaction="unknown"
  #
  AC_MSG_CHECKING([if sigaction can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([sigaction])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_sigaction="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_sigaction="no"
  ])
  #
  if test "$tst_links_sigaction" = "yes"; then
    AC_MSG_CHECKING([if sigaction is prototyped])
    AC_EGREP_CPP([sigaction],[
      $curl_includes_signal
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_sigaction="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_sigaction="no"
    ])
  fi
  #
  if test "$tst_proto_sigaction" = "yes"; then
    AC_MSG_CHECKING([if sigaction is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_signal
      ]],[[
        if(0 != sigaction(0, 0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_sigaction="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_sigaction="no"
    ])
  fi
  #
  if test "$tst_compi_sigaction" = "yes"; then
    AC_MSG_CHECKING([if sigaction usage allowed])
    if test "x$curl_disallow_sigaction" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_sigaction="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_sigaction="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if sigaction might be used])
  if test "$tst_links_sigaction" = "yes" &&
     test "$tst_proto_sigaction" = "yes" &&
     test "$tst_compi_sigaction" = "yes" &&
     test "$tst_allow_sigaction" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_SIGACTION, 1,
      [Define to 1 if you have the sigaction function.])
    ac_cv_func_sigaction="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_sigaction="no"
  fi
])


dnl CURL_CHECK_FUNC_SIGINTERRUPT
dnl -------------------------------------------------
dnl Verify if siginterrupt is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_siginterrupt, then
dnl HAVE_SIGINTERRUPT will be defined.

AC_DEFUN([CURL_CHECK_FUNC_SIGINTERRUPT], [
  AC_REQUIRE([CURL_INCLUDES_SIGNAL])dnl
  #
  tst_links_siginterrupt="unknown"
  tst_proto_siginterrupt="unknown"
  tst_compi_siginterrupt="unknown"
  tst_allow_siginterrupt="unknown"
  #
  AC_MSG_CHECKING([if siginterrupt can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([siginterrupt])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_siginterrupt="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_siginterrupt="no"
  ])
  #
  if test "$tst_links_siginterrupt" = "yes"; then
    AC_MSG_CHECKING([if siginterrupt is prototyped])
    AC_EGREP_CPP([siginterrupt],[
      $curl_includes_signal
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_siginterrupt="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_siginterrupt="no"
    ])
  fi
  #
  if test "$tst_proto_siginterrupt" = "yes"; then
    AC_MSG_CHECKING([if siginterrupt is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_signal
      ]],[[
        if(0 != siginterrupt(0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_siginterrupt="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_siginterrupt="no"
    ])
  fi
  #
  if test "$tst_compi_siginterrupt" = "yes"; then
    AC_MSG_CHECKING([if siginterrupt usage allowed])
    if test "x$curl_disallow_siginterrupt" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_siginterrupt="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_siginterrupt="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if siginterrupt might be used])
  if test "$tst_links_siginterrupt" = "yes" &&
     test "$tst_proto_siginterrupt" = "yes" &&
     test "$tst_compi_siginterrupt" = "yes" &&
     test "$tst_allow_siginterrupt" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_SIGINTERRUPT, 1,
      [Define to 1 if you have the siginterrupt function.])
    ac_cv_func_siginterrupt="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_siginterrupt="no"
  fi
])


dnl CURL_CHECK_FUNC_SIGNAL
dnl -------------------------------------------------
dnl Verify if signal is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_signal, then
dnl HAVE_SIGNAL will be defined.

AC_DEFUN([CURL_CHECK_FUNC_SIGNAL], [
  AC_REQUIRE([CURL_INCLUDES_SIGNAL])dnl
  #
  tst_links_signal="unknown"
  tst_proto_signal="unknown"
  tst_compi_signal="unknown"
  tst_allow_signal="unknown"
  #
  AC_MSG_CHECKING([if signal can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([signal])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_signal="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_signal="no"
  ])
  #
  if test "$tst_links_signal" = "yes"; then
    AC_MSG_CHECKING([if signal is prototyped])
    AC_EGREP_CPP([signal],[
      $curl_includes_signal
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_signal="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_signal="no"
    ])
  fi
  #
  if test "$tst_proto_signal" = "yes"; then
    AC_MSG_CHECKING([if signal is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_signal
      ]],[[
        if(0 != signal(0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_signal="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_signal="no"
    ])
  fi
  #
  if test "$tst_compi_signal" = "yes"; then
    AC_MSG_CHECKING([if signal usage allowed])
    if test "x$curl_disallow_signal" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_signal="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_signal="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if signal might be used])
  if test "$tst_links_signal" = "yes" &&
     test "$tst_proto_signal" = "yes" &&
     test "$tst_compi_signal" = "yes" &&
     test "$tst_allow_signal" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_SIGNAL, 1,
      [Define to 1 if you have the signal function.])
    ac_cv_func_signal="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_signal="no"
  fi
])


dnl CURL_CHECK_FUNC_SIGSETJMP
dnl -------------------------------------------------
dnl Verify if sigsetjmp is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_sigsetjmp, then
dnl HAVE_SIGSETJMP will be defined.

AC_DEFUN([CURL_CHECK_FUNC_SIGSETJMP], [
  AC_REQUIRE([CURL_INCLUDES_SETJMP])dnl
  #
  tst_links_sigsetjmp="unknown"
  tst_macro_sigsetjmp="unknown"
  tst_proto_sigsetjmp="unknown"
  tst_compi_sigsetjmp="unknown"
  tst_allow_sigsetjmp="unknown"
  #
  AC_MSG_CHECKING([if sigsetjmp can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([sigsetjmp])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_sigsetjmp="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_sigsetjmp="no"
  ])
  #
  if test "$tst_links_sigsetjmp" = "no"; then
    AC_MSG_CHECKING([if sigsetjmp seems a macro])
    AC_LINK_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_setjmp
      ]],[[
        sigjmp_buf env;
        if(0 != sigsetjmp(env, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_macro_sigsetjmp="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_macro_sigsetjmp="no"
    ])
  fi
  #
  if test "$tst_links_sigsetjmp" = "yes"; then
    AC_MSG_CHECKING([if sigsetjmp is prototyped])
    AC_EGREP_CPP([sigsetjmp],[
      $curl_includes_setjmp
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_sigsetjmp="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_sigsetjmp="no"
    ])
  fi
  #
  if test "$tst_proto_sigsetjmp" = "yes" ||
     test "$tst_macro_sigsetjmp" = "yes"; then
    AC_MSG_CHECKING([if sigsetjmp is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_setjmp
      ]],[[
        sigjmp_buf env;
        if(0 != sigsetjmp(env, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_sigsetjmp="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_sigsetjmp="no"
    ])
  fi
  #
  if test "$tst_compi_sigsetjmp" = "yes"; then
    AC_MSG_CHECKING([if sigsetjmp usage allowed])
    if test "x$curl_disallow_sigsetjmp" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_sigsetjmp="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_sigsetjmp="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if sigsetjmp might be used])
  if (test "$tst_proto_sigsetjmp" = "yes" ||
      test "$tst_macro_sigsetjmp" = "yes") &&
     test "$tst_compi_sigsetjmp" = "yes" &&
     test "$tst_allow_sigsetjmp" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_SIGSETJMP, 1,
      [Define to 1 if you have the sigsetjmp function or macro.])
    ac_cv_func_sigsetjmp="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_sigsetjmp="no"
  fi
])


dnl CURL_CHECK_FUNC_STRCASECMP
dnl -------------------------------------------------
dnl Verify if strcasecmp is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_strcasecmp, then
dnl HAVE_STRCASECMP will be defined.

AC_DEFUN([CURL_CHECK_FUNC_STRCASECMP], [
  AC_REQUIRE([CURL_INCLUDES_STRING])dnl
  #
  tst_links_strcasecmp="unknown"
  tst_proto_strcasecmp="unknown"
  tst_compi_strcasecmp="unknown"
  tst_allow_strcasecmp="unknown"
  #
  AC_MSG_CHECKING([if strcasecmp can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([strcasecmp])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_strcasecmp="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_strcasecmp="no"
  ])
  #
  if test "$tst_links_strcasecmp" = "yes"; then
    AC_MSG_CHECKING([if strcasecmp is prototyped])
    AC_EGREP_CPP([strcasecmp],[
      $curl_includes_string
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_strcasecmp="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_strcasecmp="no"
    ])
  fi
  #
  if test "$tst_proto_strcasecmp" = "yes"; then
    AC_MSG_CHECKING([if strcasecmp is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_string
      ]],[[
        if(0 != strcasecmp(0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_strcasecmp="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_strcasecmp="no"
    ])
  fi
  #
  if test "$tst_compi_strcasecmp" = "yes"; then
    AC_MSG_CHECKING([if strcasecmp usage allowed])
    if test "x$curl_disallow_strcasecmp" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_strcasecmp="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_strcasecmp="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if strcasecmp might be used])
  if test "$tst_links_strcasecmp" = "yes" &&
     test "$tst_proto_strcasecmp" = "yes" &&
     test "$tst_compi_strcasecmp" = "yes" &&
     test "$tst_allow_strcasecmp" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_STRCASECMP, 1,
      [Define to 1 if you have the strcasecmp function.])
    ac_cv_func_strcasecmp="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_strcasecmp="no"
  fi
])


dnl CURL_CHECK_FUNC_STRCASESTR
dnl -------------------------------------------------
dnl Verify if strcasestr is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_strcasestr, then
dnl HAVE_STRCASESTR will be defined.

AC_DEFUN([CURL_CHECK_FUNC_STRCASESTR], [
  AC_REQUIRE([CURL_INCLUDES_STRING])dnl
  #
  tst_links_strcasestr="unknown"
  tst_proto_strcasestr="unknown"
  tst_compi_strcasestr="unknown"
  tst_allow_strcasestr="unknown"
  #
  AC_MSG_CHECKING([if strcasestr can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([strcasestr])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_strcasestr="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_strcasestr="no"
  ])
  #
  if test "$tst_links_strcasestr" = "yes"; then
    AC_MSG_CHECKING([if strcasestr is prototyped])
    AC_EGREP_CPP([strcasestr],[
      $curl_includes_string
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_strcasestr="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_strcasestr="no"
    ])
  fi
  #
  if test "$tst_proto_strcasestr" = "yes"; then
    AC_MSG_CHECKING([if strcasestr is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_string
      ]],[[
        if(0 != strcasestr(0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_strcasestr="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_strcasestr="no"
    ])
  fi
  #
  if test "$tst_compi_strcasestr" = "yes"; then
    AC_MSG_CHECKING([if strcasestr usage allowed])
    if test "x$curl_disallow_strcasestr" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_strcasestr="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_strcasestr="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if strcasestr might be used])
  if test "$tst_links_strcasestr" = "yes" &&
     test "$tst_proto_strcasestr" = "yes" &&
     test "$tst_compi_strcasestr" = "yes" &&
     test "$tst_allow_strcasestr" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_STRCASESTR, 1,
      [Define to 1 if you have the strcasestr function.])
    ac_cv_func_strcasestr="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_strcasestr="no"
  fi
])


dnl CURL_CHECK_FUNC_STRCMPI
dnl -------------------------------------------------
dnl Verify if strcmpi is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_strcmpi, then
dnl HAVE_STRCMPI will be defined.

AC_DEFUN([CURL_CHECK_FUNC_STRCMPI], [
  AC_REQUIRE([CURL_INCLUDES_STRING])dnl
  #
  tst_links_strcmpi="unknown"
  tst_proto_strcmpi="unknown"
  tst_compi_strcmpi="unknown"
  tst_allow_strcmpi="unknown"
  #
  AC_MSG_CHECKING([if strcmpi can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([strcmpi])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_strcmpi="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_strcmpi="no"
  ])
  #
  if test "$tst_links_strcmpi" = "yes"; then
    AC_MSG_CHECKING([if strcmpi is prototyped])
    AC_EGREP_CPP([strcmpi],[
      $curl_includes_string
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_strcmpi="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_strcmpi="no"
    ])
  fi
  #
  if test "$tst_proto_strcmpi" = "yes"; then
    AC_MSG_CHECKING([if strcmpi is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_string
      ]],[[
        if(0 != strcmpi(0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_strcmpi="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_strcmpi="no"
    ])
  fi
  #
  if test "$tst_compi_strcmpi" = "yes"; then
    AC_MSG_CHECKING([if strcmpi usage allowed])
    if test "x$curl_disallow_strcmpi" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_strcmpi="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_strcmpi="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if strcmpi might be used])
  if test "$tst_links_strcmpi" = "yes" &&
     test "$tst_proto_strcmpi" = "yes" &&
     test "$tst_compi_strcmpi" = "yes" &&
     test "$tst_allow_strcmpi" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_STRCMPI, 1,
      [Define to 1 if you have the strcmpi function.])
    ac_cv_func_strcmpi="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_strcmpi="no"
  fi
])


dnl CURL_CHECK_FUNC_STRDUP
dnl -------------------------------------------------
dnl Verify if strdup is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_strdup, then
dnl HAVE_STRDUP will be defined.

AC_DEFUN([CURL_CHECK_FUNC_STRDUP], [
  AC_REQUIRE([CURL_INCLUDES_STRING])dnl
  #
  tst_links_strdup="unknown"
  tst_proto_strdup="unknown"
  tst_compi_strdup="unknown"
  tst_allow_strdup="unknown"
  #
  AC_MSG_CHECKING([if strdup can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([strdup])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_strdup="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_strdup="no"
  ])
  #
  if test "$tst_links_strdup" = "yes"; then
    AC_MSG_CHECKING([if strdup is prototyped])
    AC_EGREP_CPP([strdup],[
      $curl_includes_string
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_strdup="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_strdup="no"
    ])
  fi
  #
  if test "$tst_proto_strdup" = "yes"; then
    AC_MSG_CHECKING([if strdup is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_string
      ]],[[
        if(0 != strdup(0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_strdup="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_strdup="no"
    ])
  fi
  #
  if test "$tst_compi_strdup" = "yes"; then
    AC_MSG_CHECKING([if strdup usage allowed])
    if test "x$curl_disallow_strdup" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_strdup="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_strdup="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if strdup might be used])
  if test "$tst_links_strdup" = "yes" &&
     test "$tst_proto_strdup" = "yes" &&
     test "$tst_compi_strdup" = "yes" &&
     test "$tst_allow_strdup" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_STRDUP, 1,
      [Define to 1 if you have the strdup function.])
    ac_cv_func_strdup="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_strdup="no"
  fi
])


dnl CURL_CHECK_FUNC_STRERROR_R
dnl -------------------------------------------------
dnl Verify if strerror_r is available, prototyped, can be compiled and
dnl seems to work. If all of these are true, and usage has not been
dnl previously disallowed with shell variable curl_disallow_strerror_r,
dnl then HAVE_STRERROR_R and STRERROR_R_TYPE_ARG3 will be defined, as
dnl well as one of HAVE_GLIBC_STRERROR_R or HAVE_POSIX_STRERROR_R.
dnl
dnl glibc-style strerror_r:
dnl
dnl      char *strerror_r(int errnum, char *workbuf, size_t bufsize);
dnl
dnl  glibc-style strerror_r returns a pointer to the the error string,
dnl  and might use the provided workbuf as a scratch area if needed. A
dnl  quick test on a few systems shows that it's usually not used at all.
dnl
dnl POSIX-style strerror_r:
dnl
dnl      int strerror_r(int errnum, char *resultbuf, size_t bufsize);
dnl
dnl  POSIX-style strerror_r returns 0 upon successful completion and the
dnl  error string in the provided resultbuf.
dnl

AC_DEFUN([CURL_CHECK_FUNC_STRERROR_R], [
  AC_REQUIRE([CURL_INCLUDES_STDLIB])dnl
  AC_REQUIRE([CURL_INCLUDES_STRING])dnl
  #
  tst_links_strerror_r="unknown"
  tst_proto_strerror_r="unknown"
  tst_compi_strerror_r="unknown"
  tst_glibc_strerror_r="unknown"
  tst_posix_strerror_r="unknown"
  tst_allow_strerror_r="unknown"
  tst_works_glibc_strerror_r="unknown"
  tst_works_posix_strerror_r="unknown"
  tst_glibc_strerror_r_type_arg3="unknown"
  tst_posix_strerror_r_type_arg3="unknown"
  #
  AC_MSG_CHECKING([if strerror_r can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([strerror_r])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_strerror_r="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_strerror_r="no"
  ])
  #
  if test "$tst_links_strerror_r" = "yes"; then
    AC_MSG_CHECKING([if strerror_r is prototyped])
    AC_EGREP_CPP([strerror_r],[
      $curl_includes_string
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_strerror_r="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_strerror_r="no"
    ])
  fi
  #
  if test "$tst_proto_strerror_r" = "yes"; then
    AC_MSG_CHECKING([if strerror_r is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_string
      ]],[[
        if(0 != strerror_r(0, 0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_strerror_r="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_strerror_r="no"
    ])
  fi
  #
  if test "$tst_compi_strerror_r" = "yes"; then
    AC_MSG_CHECKING([if strerror_r is glibc like])
    tst_glibc_strerror_r_type_arg3="unknown"
    for arg3 in 'size_t' 'int' 'unsigned int'; do
      if test "$tst_glibc_strerror_r_type_arg3" = "unknown"; then
        AC_COMPILE_IFELSE([
          AC_LANG_PROGRAM([[
            $curl_includes_string
          ]],[[
            char *strerror_r(int errnum, char *workbuf, $arg3 bufsize);
            if(0 != strerror_r(0, 0, 0))
              return 1;
          ]])
        ],[
          tst_glibc_strerror_r_type_arg3="$arg3"
        ])
      fi
    done
    case "$tst_glibc_strerror_r_type_arg3" in
      unknown)
        AC_MSG_RESULT([no])
        tst_glibc_strerror_r="no"
        ;;
      *)
        AC_MSG_RESULT([yes])
        tst_glibc_strerror_r="yes"
        ;;
    esac
  fi
  #
  dnl only do runtime verification when not cross-compiling
  if test "x$cross_compiling" != "xyes" &&
    test "$tst_glibc_strerror_r" = "yes"; then
    AC_MSG_CHECKING([if strerror_r seems to work])
    AC_RUN_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_stdlib
        $curl_includes_string
#       include <errno.h>
      ]],[[
        char buffer[1024];
        char *string = 0;
        buffer[0] = '\0';
        string = strerror_r(EACCES, buffer, sizeof(buffer));
        if(!string)
          exit(1); /* fail */
        if(!string[0])
          exit(1); /* fail */
        else
          exit(0);
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_works_glibc_strerror_r="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_works_glibc_strerror_r="no"
    ])
  fi
  #
  if test "$tst_compi_strerror_r" = "yes" &&
    test "$tst_works_glibc_strerror_r" != "yes"; then
    AC_MSG_CHECKING([if strerror_r is POSIX like])
    tst_posix_strerror_r_type_arg3="unknown"
    for arg3 in 'size_t' 'int' 'unsigned int'; do
      if test "$tst_posix_strerror_r_type_arg3" = "unknown"; then
        AC_COMPILE_IFELSE([
          AC_LANG_PROGRAM([[
            $curl_includes_string
          ]],[[
            int strerror_r(int errnum, char *resultbuf, $arg3 bufsize);
            if(0 != strerror_r(0, 0, 0))
              return 1;
          ]])
        ],[
          tst_posix_strerror_r_type_arg3="$arg3"
        ])
      fi
    done
    case "$tst_posix_strerror_r_type_arg3" in
      unknown)
        AC_MSG_RESULT([no])
        tst_posix_strerror_r="no"
        ;;
      *)
        AC_MSG_RESULT([yes])
        tst_posix_strerror_r="yes"
        ;;
    esac
  fi
  #
  dnl only do runtime verification when not cross-compiling
  if test "x$cross_compiling" != "xyes" &&
    test "$tst_posix_strerror_r" = "yes"; then
    AC_MSG_CHECKING([if strerror_r seems to work])
    AC_RUN_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_stdlib
        $curl_includes_string
#       include <errno.h>
      ]],[[
        char buffer[1024];
        int error = 1;
        buffer[0] = '\0';
        error = strerror_r(EACCES, buffer, sizeof(buffer));
        if(error)
          exit(1); /* fail */
        if(buffer[0] == '\0')
          exit(1); /* fail */
        else
          exit(0);
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_works_posix_strerror_r="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_works_posix_strerror_r="no"
    ])
  fi
  #
  if test "$tst_works_glibc_strerror_r" = "yes"; then
    tst_posix_strerror_r="no"
  fi
  if test "$tst_works_posix_strerror_r" = "yes"; then
    tst_glibc_strerror_r="no"
  fi
  if test "$tst_glibc_strerror_r" = "yes" &&
    test "$tst_works_glibc_strerror_r" != "no" &&
    test "$tst_posix_strerror_r" != "yes"; then
    tst_allow_strerror_r="check"
  fi
  if test "$tst_posix_strerror_r" = "yes" &&
    test "$tst_works_posix_strerror_r" != "no" &&
    test "$tst_glibc_strerror_r" != "yes"; then
    tst_allow_strerror_r="check"
  fi
  if test "$tst_allow_strerror_r" = "check"; then
    AC_MSG_CHECKING([if strerror_r usage allowed])
    if test "x$curl_disallow_strerror_r" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_strerror_r="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_strerror_r="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if strerror_r might be used])
  if test "$tst_links_strerror_r" = "yes" &&
     test "$tst_proto_strerror_r" = "yes" &&
     test "$tst_compi_strerror_r" = "yes" &&
     test "$tst_allow_strerror_r" = "yes"; then
    AC_MSG_RESULT([yes])
    if test "$tst_glibc_strerror_r" = "yes"; then
      AC_DEFINE_UNQUOTED(HAVE_STRERROR_R, 1,
        [Define to 1 if you have the strerror_r function.])
      AC_DEFINE_UNQUOTED(HAVE_GLIBC_STRERROR_R, 1,
        [Define to 1 if you have a working glibc-style strerror_r function.])
      AC_DEFINE_UNQUOTED(STRERROR_R_TYPE_ARG3, $tst_glibc_strerror_r_type_arg3,
        [Define to the type of arg 3 for strerror_r.])
    fi
    if test "$tst_posix_strerror_r" = "yes"; then
      AC_DEFINE_UNQUOTED(HAVE_STRERROR_R, 1,
        [Define to 1 if you have the strerror_r function.])
      AC_DEFINE_UNQUOTED(HAVE_POSIX_STRERROR_R, 1,
        [Define to 1 if you have a working POSIX-style strerror_r function.])
      AC_DEFINE_UNQUOTED(STRERROR_R_TYPE_ARG3, $tst_posix_strerror_r_type_arg3,
        [Define to the type of arg 3 for strerror_r.])
    fi
    ac_cv_func_strerror_r="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_strerror_r="no"
  fi
  #
  if test "$tst_compi_strerror_r" = "yes" &&
     test "$tst_allow_strerror_r" = "unknown"; then
    AC_MSG_WARN([cannot determine strerror_r() style: edit lib/config.h manually.])
  fi
  #
])


dnl CURL_CHECK_FUNC_STRICMP
dnl -------------------------------------------------
dnl Verify if stricmp is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_stricmp, then
dnl HAVE_STRICMP will be defined.

AC_DEFUN([CURL_CHECK_FUNC_STRICMP], [
  AC_REQUIRE([CURL_INCLUDES_STRING])dnl
  #
  tst_links_stricmp="unknown"
  tst_proto_stricmp="unknown"
  tst_compi_stricmp="unknown"
  tst_allow_stricmp="unknown"
  #
  AC_MSG_CHECKING([if stricmp can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([stricmp])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_stricmp="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_stricmp="no"
  ])
  #
  if test "$tst_links_stricmp" = "yes"; then
    AC_MSG_CHECKING([if stricmp is prototyped])
    AC_EGREP_CPP([stricmp],[
      $curl_includes_string
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_stricmp="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_stricmp="no"
    ])
  fi
  #
  if test "$tst_proto_stricmp" = "yes"; then
    AC_MSG_CHECKING([if stricmp is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_string
      ]],[[
        if(0 != stricmp(0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_stricmp="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_stricmp="no"
    ])
  fi
  #
  if test "$tst_compi_stricmp" = "yes"; then
    AC_MSG_CHECKING([if stricmp usage allowed])
    if test "x$curl_disallow_stricmp" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_stricmp="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_stricmp="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if stricmp might be used])
  if test "$tst_links_stricmp" = "yes" &&
     test "$tst_proto_stricmp" = "yes" &&
     test "$tst_compi_stricmp" = "yes" &&
     test "$tst_allow_stricmp" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_STRICMP, 1,
      [Define to 1 if you have the stricmp function.])
    ac_cv_func_stricmp="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_stricmp="no"
  fi
])


dnl CURL_CHECK_FUNC_STRLCAT
dnl -------------------------------------------------
dnl Verify if strlcat is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_strlcat, then
dnl HAVE_STRLCAT will be defined.

AC_DEFUN([CURL_CHECK_FUNC_STRLCAT], [
  AC_REQUIRE([CURL_INCLUDES_STRING])dnl
  #
  tst_links_strlcat="unknown"
  tst_proto_strlcat="unknown"
  tst_compi_strlcat="unknown"
  tst_allow_strlcat="unknown"
  #
  AC_MSG_CHECKING([if strlcat can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([strlcat])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_strlcat="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_strlcat="no"
  ])
  #
  if test "$tst_links_strlcat" = "yes"; then
    AC_MSG_CHECKING([if strlcat is prototyped])
    AC_EGREP_CPP([strlcat],[
      $curl_includes_string
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_strlcat="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_strlcat="no"
    ])
  fi
  #
  if test "$tst_proto_strlcat" = "yes"; then
    AC_MSG_CHECKING([if strlcat is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_string
      ]],[[
        if(0 != strlcat(0, 0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_strlcat="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_strlcat="no"
    ])
  fi
  #
  if test "$tst_compi_strlcat" = "yes"; then
    AC_MSG_CHECKING([if strlcat usage allowed])
    if test "x$curl_disallow_strlcat" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_strlcat="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_strlcat="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if strlcat might be used])
  if test "$tst_links_strlcat" = "yes" &&
     test "$tst_proto_strlcat" = "yes" &&
     test "$tst_compi_strlcat" = "yes" &&
     test "$tst_allow_strlcat" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_STRLCAT, 1,
      [Define to 1 if you have the strlcat function.])
    ac_cv_func_strlcat="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_strlcat="no"
  fi
])


dnl CURL_CHECK_FUNC_STRNCASECMP
dnl -------------------------------------------------
dnl Verify if strncasecmp is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_strncasecmp, then
dnl HAVE_STRNCASECMP will be defined.

AC_DEFUN([CURL_CHECK_FUNC_STRNCASECMP], [
  AC_REQUIRE([CURL_INCLUDES_STRING])dnl
  #
  tst_links_strncasecmp="unknown"
  tst_proto_strncasecmp="unknown"
  tst_compi_strncasecmp="unknown"
  tst_allow_strncasecmp="unknown"
  #
  AC_MSG_CHECKING([if strncasecmp can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([strncasecmp])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_strncasecmp="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_strncasecmp="no"
  ])
  #
  if test "$tst_links_strncasecmp" = "yes"; then
    AC_MSG_CHECKING([if strncasecmp is prototyped])
    AC_EGREP_CPP([strncasecmp],[
      $curl_includes_string
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_strncasecmp="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_strncasecmp="no"
    ])
  fi
  #
  if test "$tst_proto_strncasecmp" = "yes"; then
    AC_MSG_CHECKING([if strncasecmp is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_string
      ]],[[
        if(0 != strncasecmp(0, 0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_strncasecmp="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_strncasecmp="no"
    ])
  fi
  #
  if test "$tst_compi_strncasecmp" = "yes"; then
    AC_MSG_CHECKING([if strncasecmp usage allowed])
    if test "x$curl_disallow_strncasecmp" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_strncasecmp="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_strncasecmp="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if strncasecmp might be used])
  if test "$tst_links_strncasecmp" = "yes" &&
     test "$tst_proto_strncasecmp" = "yes" &&
     test "$tst_compi_strncasecmp" = "yes" &&
     test "$tst_allow_strncasecmp" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_STRNCASECMP, 1,
      [Define to 1 if you have the strncasecmp function.])
    ac_cv_func_strncasecmp="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_strncasecmp="no"
  fi
])


dnl CURL_CHECK_FUNC_STRNCMPI
dnl -------------------------------------------------
dnl Verify if strncmpi is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_strncmpi, then
dnl HAVE_STRNCMPI will be defined.

AC_DEFUN([CURL_CHECK_FUNC_STRNCMPI], [
  AC_REQUIRE([CURL_INCLUDES_STRING])dnl
  #
  tst_links_strncmpi="unknown"
  tst_proto_strncmpi="unknown"
  tst_compi_strncmpi="unknown"
  tst_allow_strncmpi="unknown"
  #
  AC_MSG_CHECKING([if strncmpi can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([strncmpi])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_strncmpi="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_strncmpi="no"
  ])
  #
  if test "$tst_links_strncmpi" = "yes"; then
    AC_MSG_CHECKING([if strncmpi is prototyped])
    AC_EGREP_CPP([strncmpi],[
      $curl_includes_string
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_strncmpi="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_strncmpi="no"
    ])
  fi
  #
  if test "$tst_proto_strncmpi" = "yes"; then
    AC_MSG_CHECKING([if strncmpi is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_string
      ]],[[
        if(0 != strncmpi(0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_strncmpi="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_strncmpi="no"
    ])
  fi
  #
  if test "$tst_compi_strncmpi" = "yes"; then
    AC_MSG_CHECKING([if strncmpi usage allowed])
    if test "x$curl_disallow_strncmpi" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_strncmpi="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_strncmpi="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if strncmpi might be used])
  if test "$tst_links_strncmpi" = "yes" &&
     test "$tst_proto_strncmpi" = "yes" &&
     test "$tst_compi_strncmpi" = "yes" &&
     test "$tst_allow_strncmpi" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_STRNCMPI, 1,
      [Define to 1 if you have the strncmpi function.])
    ac_cv_func_strncmpi="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_strncmpi="no"
  fi
])


dnl CURL_CHECK_FUNC_STRNICMP
dnl -------------------------------------------------
dnl Verify if strnicmp is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_strnicmp, then
dnl HAVE_STRNICMP will be defined.

AC_DEFUN([CURL_CHECK_FUNC_STRNICMP], [
  AC_REQUIRE([CURL_INCLUDES_STRING])dnl
  #
  tst_links_strnicmp="unknown"
  tst_proto_strnicmp="unknown"
  tst_compi_strnicmp="unknown"
  tst_allow_strnicmp="unknown"
  #
  AC_MSG_CHECKING([if strnicmp can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([strnicmp])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_strnicmp="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_strnicmp="no"
  ])
  #
  if test "$tst_links_strnicmp" = "yes"; then
    AC_MSG_CHECKING([if strnicmp is prototyped])
    AC_EGREP_CPP([strnicmp],[
      $curl_includes_string
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_strnicmp="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_strnicmp="no"
    ])
  fi
  #
  if test "$tst_proto_strnicmp" = "yes"; then
    AC_MSG_CHECKING([if strnicmp is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_string
      ]],[[
        if(0 != strnicmp(0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_strnicmp="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_strnicmp="no"
    ])
  fi
  #
  if test "$tst_compi_strnicmp" = "yes"; then
    AC_MSG_CHECKING([if strnicmp usage allowed])
    if test "x$curl_disallow_strnicmp" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_strnicmp="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_strnicmp="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if strnicmp might be used])
  if test "$tst_links_strnicmp" = "yes" &&
     test "$tst_proto_strnicmp" = "yes" &&
     test "$tst_compi_strnicmp" = "yes" &&
     test "$tst_allow_strnicmp" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_STRNICMP, 1,
      [Define to 1 if you have the strnicmp function.])
    ac_cv_func_strnicmp="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_strnicmp="no"
  fi
])


dnl CURL_CHECK_FUNC_STRSTR
dnl -------------------------------------------------
dnl Verify if strstr is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_strstr, then
dnl HAVE_STRSTR will be defined.

AC_DEFUN([CURL_CHECK_FUNC_STRSTR], [
  AC_REQUIRE([CURL_INCLUDES_STRING])dnl
  #
  tst_links_strstr="unknown"
  tst_proto_strstr="unknown"
  tst_compi_strstr="unknown"
  tst_allow_strstr="unknown"
  #
  AC_MSG_CHECKING([if strstr can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([strstr])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_strstr="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_strstr="no"
  ])
  #
  if test "$tst_links_strstr" = "yes"; then
    AC_MSG_CHECKING([if strstr is prototyped])
    AC_EGREP_CPP([strstr],[
      $curl_includes_string
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_strstr="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_strstr="no"
    ])
  fi
  #
  if test "$tst_proto_strstr" = "yes"; then
    AC_MSG_CHECKING([if strstr is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_string
      ]],[[
        if(0 != strstr(0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_strstr="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_strstr="no"
    ])
  fi
  #
  if test "$tst_compi_strstr" = "yes"; then
    AC_MSG_CHECKING([if strstr usage allowed])
    if test "x$curl_disallow_strstr" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_strstr="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_strstr="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if strstr might be used])
  if test "$tst_links_strstr" = "yes" &&
     test "$tst_proto_strstr" = "yes" &&
     test "$tst_compi_strstr" = "yes" &&
     test "$tst_allow_strstr" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_STRSTR, 1,
      [Define to 1 if you have the strstr function.])
    ac_cv_func_strstr="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_strstr="no"
  fi
])


dnl CURL_CHECK_FUNC_STRTOK_R
dnl -------------------------------------------------
dnl Verify if strtok_r is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_strtok_r, then
dnl HAVE_STRTOK_R will be defined.

AC_DEFUN([CURL_CHECK_FUNC_STRTOK_R], [
  AC_REQUIRE([CURL_INCLUDES_STRING])dnl
  #
  tst_links_strtok_r="unknown"
  tst_proto_strtok_r="unknown"
  tst_compi_strtok_r="unknown"
  tst_allow_strtok_r="unknown"
  #
  AC_MSG_CHECKING([if strtok_r can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([strtok_r])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_strtok_r="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_strtok_r="no"
  ])
  #
  if test "$tst_links_strtok_r" = "yes"; then
    AC_MSG_CHECKING([if strtok_r is prototyped])
    AC_EGREP_CPP([strtok_r],[
      $curl_includes_string
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_strtok_r="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_strtok_r="no"
    ])
  fi
  #
  if test "$tst_proto_strtok_r" = "yes"; then
    AC_MSG_CHECKING([if strtok_r is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_string
      ]],[[
        if(0 != strtok_r(0, 0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_strtok_r="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_strtok_r="no"
    ])
  fi
  #
  if test "$tst_compi_strtok_r" = "yes"; then
    AC_MSG_CHECKING([if strtok_r usage allowed])
    if test "x$curl_disallow_strtok_r" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_strtok_r="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_strtok_r="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if strtok_r might be used])
  if test "$tst_links_strtok_r" = "yes" &&
     test "$tst_proto_strtok_r" = "yes" &&
     test "$tst_compi_strtok_r" = "yes" &&
     test "$tst_allow_strtok_r" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_STRTOK_R, 1,
      [Define to 1 if you have the strtok_r function.])
    ac_cv_func_strtok_r="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_strtok_r="no"
  fi
])


dnl CURL_CHECK_FUNC_STRTOLL
dnl -------------------------------------------------
dnl Verify if strtoll is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_strtoll, then
dnl HAVE_STRTOLL will be defined.

AC_DEFUN([CURL_CHECK_FUNC_STRTOLL], [
  AC_REQUIRE([CURL_INCLUDES_STDLIB])dnl
  #
  tst_links_strtoll="unknown"
  tst_proto_strtoll="unknown"
  tst_compi_strtoll="unknown"
  tst_allow_strtoll="unknown"
  #
  AC_MSG_CHECKING([if strtoll can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([strtoll])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_strtoll="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_strtoll="no"
  ])
  #
  if test "$tst_links_strtoll" = "yes"; then
    AC_MSG_CHECKING([if strtoll is prototyped])
    AC_EGREP_CPP([strtoll],[
      $curl_includes_stdlib
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_strtoll="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_strtoll="no"
    ])
  fi
  #
  if test "$tst_proto_strtoll" = "yes"; then
    AC_MSG_CHECKING([if strtoll is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_stdlib
      ]],[[
        if(0 != strtoll(0, 0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_strtoll="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_strtoll="no"
    ])
  fi
  #
  if test "$tst_compi_strtoll" = "yes"; then
    AC_MSG_CHECKING([if strtoll usage allowed])
    if test "x$curl_disallow_strtoll" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_strtoll="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_strtoll="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if strtoll might be used])
  if test "$tst_links_strtoll" = "yes" &&
     test "$tst_proto_strtoll" = "yes" &&
     test "$tst_compi_strtoll" = "yes" &&
     test "$tst_allow_strtoll" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_STRTOLL, 1,
      [Define to 1 if you have the strtoll function.])
    ac_cv_func_strtoll="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_strtoll="no"
  fi
])


dnl CURL_CHECK_FUNC_WRITEV
dnl -------------------------------------------------
dnl Verify if writev is available, prototyped, and
dnl can be compiled. If all of these are true, and
dnl usage has not been previously disallowed with
dnl shell variable curl_disallow_writev, then
dnl HAVE_WRITEV will be defined.

AC_DEFUN([CURL_CHECK_FUNC_WRITEV], [
  AC_REQUIRE([CURL_INCLUDES_SYS_UIO])dnl
  #
  tst_links_writev="unknown"
  tst_proto_writev="unknown"
  tst_compi_writev="unknown"
  tst_allow_writev="unknown"
  #
  AC_MSG_CHECKING([if writev can be linked])
  AC_LINK_IFELSE([
    AC_LANG_FUNC_LINK_TRY([writev])
  ],[
    AC_MSG_RESULT([yes])
    tst_links_writev="yes"
  ],[
    AC_MSG_RESULT([no])
    tst_links_writev="no"
  ])
  #
  if test "$tst_links_writev" = "yes"; then
    AC_MSG_CHECKING([if writev is prototyped])
    AC_EGREP_CPP([writev],[
      $curl_includes_sys_uio
    ],[
      AC_MSG_RESULT([yes])
      tst_proto_writev="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_proto_writev="no"
    ])
  fi
  #
  if test "$tst_proto_writev" = "yes"; then
    AC_MSG_CHECKING([if writev is compilable])
    AC_COMPILE_IFELSE([
      AC_LANG_PROGRAM([[
        $curl_includes_sys_uio
      ]],[[
        if(0 != writev(0, 0, 0))
          return 1;
      ]])
    ],[
      AC_MSG_RESULT([yes])
      tst_compi_writev="yes"
    ],[
      AC_MSG_RESULT([no])
      tst_compi_writev="no"
    ])
  fi
  #
  if test "$tst_compi_writev" = "yes"; then
    AC_MSG_CHECKING([if writev usage allowed])
    if test "x$curl_disallow_writev" != "xyes"; then
      AC_MSG_RESULT([yes])
      tst_allow_writev="yes"
    else
      AC_MSG_RESULT([no])
      tst_allow_writev="no"
    fi
  fi
  #
  AC_MSG_CHECKING([if writev might be used])
  if test "$tst_links_writev" = "yes" &&
     test "$tst_proto_writev" = "yes" &&
     test "$tst_compi_writev" = "yes" &&
     test "$tst_allow_writev" = "yes"; then
    AC_MSG_RESULT([yes])
    AC_DEFINE_UNQUOTED(HAVE_WRITEV, 1,
      [Define to 1 if you have the writev function.])
    ac_cv_func_writev="yes"
  else
    AC_MSG_RESULT([no])
    ac_cv_func_writev="no"
  fi
])
