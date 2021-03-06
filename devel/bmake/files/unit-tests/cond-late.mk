# $NetBSD: cond-late.mk,v 1.1.1.1 2020/05/24 05:35:53 nia Exp $
#
# Using the :? modifier, variable expressions can contain conditional
# expressions that are evaluated late.  Any variables appearing in these
# conditions are expanded before parsing the condition.  This is
# different from many other places.
#
# Because of this, variables that are used in these lazy conditions
# should not contain double-quotes, or the parser will probably fail.
#
# They should also not contain operators like == or <, since these are
# actually interpreted as these operators. This is demonstrated below.
#
# If the order of evaluation were to change to first parse the condition
# and then expand the variables, the output would change from the
# current "yes no" to "yes yes", since both variables are non-empty.

COND.true=	"yes" == "yes"
COND.false=	"yes" != "yes"

all:
	@echo ${ ${COND.true} :?yes:no}
	@echo ${ ${COND.false} :?yes:no}
