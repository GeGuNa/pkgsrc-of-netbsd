# $NetBSD: varquote.mk,v 1.1.1.1 2020/05/24 05:35:53 nia Exp $
#
# Test VAR:q modifier

.if !defined(REPROFLAGS)
REPROFLAGS+=    -fdebug-prefix-map=\$$NETBSDSRCDIR=/usr/src
REPROFLAGS+=    -fdebug-regex-map='/usr/src/(.*)/obj$$=/usr/obj/\1'
all:
	@${MAKE} -f ${MAKEFILE} REPROFLAGS=${REPROFLAGS:S/\$/&&/g:Q}
	@${MAKE} -f ${MAKEFILE} REPROFLAGS=${REPROFLAGS:q}
.else
all:
	@printf "%s %s\n" ${REPROFLAGS}
.endif
