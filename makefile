# Makefile for PL/I

%.exe: %.pli
	plic $*.pli \
        (m mar(1,100) nest not('ª') s inc(ext('CPY')) exit langlvl(saa2) limits(extname(31)) a)
	link386 $*.obj /m /pm:VIO /noe /co /stack:7000000,,$*.map,ceelink+ibmlink, nul.def                    

