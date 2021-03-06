# =====================================================================
#  Name        : SymTorrent_icons.mk
#  Part of     : SymTorrent
#  Description :
#  Version     : 
# 
# =====================================================================

ifeq (WINS,$(findstring WINS, $(PLATFORM)))
ZDIR=$(EPOCROOT)epoc32\release\$(PLATFORM)\$(CFG)\Z
else
ZDIR=$(EPOCROOT)epoc32\data\z
endif

TARGETDIR=$(ZDIR)\resource\apps
HEADERDIR=$(EPOCROOT)epoc32\include
ICONTARGETFILENAME=$(TARGETDIR)\SymTorrent.mif
HEADERFILENAME=$(HEADERDIR)\SymTorrent.mbg

do_nothing :
	@rem do_nothing

MAKMAKE : do_nothing

BLD : do_nothing

CLEAN : do_nothing

LIB : do_nothing

CLEANLIB : do_nothing

RESOURCE :
	mifconv $(ICONTARGETFILENAME) /h$(HEADERFILENAME) /c24,8\
		..\gfx\downloading.svg \
		..\gfx\complete.svg \
		..\gfx\paused.svg \
		..\gfx\failed.svg \
		..\gfx\uploading.svg \
		..\gfx\not_uploading.svg \
		..\gfx\empty.svg \
		..\gfx\not_sharing.svg

FREEZE : do_nothing

SAVESPACE : do_nothing

RELEASABLES :
	@echo $(HEADERFILENAME)&& \
	@echo $(ICONTARGETFILENAME)

FINAL : do_nothing
