# $Id: doterror.mk,v 1.1.1.1 2015/05/19 21:36:45 joerg Exp $


.BEGIN:
	@echo At first, I am

.END:
	@echo not reached

.ERROR:
	@echo "$@: Looks like '${.ERROR_TARGET}' is upset."

all:	happy sad

happy:
	@echo $@

sad:
	@echo and now: $@; exit 1

