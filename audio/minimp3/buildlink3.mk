# $NetBSD: buildlink3.mk,v 1.1 2021/04/19 10:14:11 nia Exp $

BUILDLINK_TREE+=	minimp3

.if !defined(MINIMP3_BUILDLINK3_MK)
MINIMP3_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.minimp3+=	minimp3>=20200120
BUILDLINK_PKGSRCDIR.minimp3?=	../../audio/minimp3
BUILDLINK_DEPMETHOD.minimp3?=	build
.endif	# MINIMP3_BUILDLINK3_MK

BUILDLINK_TREE+=	-minimp3