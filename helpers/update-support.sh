#! /bin/bash

# This script is only useful for the maintainer ...
#
# It updates all the support/* files from current GNULIB.
# We don't bother to print any messages about what we copied,
# as Git will tell us what, if anything, changed.

(cd /usr/local/src/Gnu/gnulib && git pull)

GL=/usr/local/src/Gnu/gnulib/lib

FILE_LIST="cdefs.h
dfa.c
dfa.h
dynarray.h
flexmember.h
idx.h
intprops.h
libc-config.h
localeinfo.c
localeinfo.h
regcomp.c
regex.c
regexec.c
regex.h
regex_internal.c
regex_internal.h
verify.h
malloc/dynarray-skeleton.c
malloc/dynarray.h
malloc/dynarray_at_failure.c
malloc/dynarray_emplace_enlarge.c
malloc/dynarray_emplace_enlarge.c 
malloc/dynarray_finalize.c
malloc/dynarray_resize.c
malloc/dynarray_resize_clear.c"

for i in $FILE_LIST
do
	if [ -f $GL/$i ] && [ -f support/$i ]
	then
		cp $GL/$i support/$i
	fi
done
