# $Id: final.mk,v 1.1.1.1 2020/05/24 05:35:53 nia Exp $

.if !target(__${.PARSEFILE}__)
__${.PARSEFILE}__:

# provide a hook for folk who want to do scary stuff
.-include <${.CURDIR:H}/Makefile-final.inc>

.-include <local.final.mk>

.if ${MK_STAGING} == "yes"
.include <meta.stage.mk>
.elif !empty(STAGE)
.-include <stage.mk>
.endif

.if empty(_SKIP_BUILD)
install: realinstall
.endif
realinstall:

.endif
