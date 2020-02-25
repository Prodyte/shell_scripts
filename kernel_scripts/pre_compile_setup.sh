#!/bin/bash
     ## SPDX-License-Identifier: GPL-2.0
     # Copyright(c) Shuah Khan <skhan@linuxfoundation.org>
     #
     # License: GPLv2
     # Example usage: pre_compile_setup.sh 5.2.11 1 5
     # Arg 1 is the stable release version which is typically 5.2.x
     # Arg2 is the 1 for rc1 or 2 for rc2
     # Arg3 is 4.x or 5.x used to call wget to get the patch file
     echo Testing patch-$1-rc$2
     wget https://www.kernel.org/pub/linux/kernel/v$3.x/stable-review/patch-$1-rc$2.gz 
     git reset --hard
     make clean
     git pull
     gunzip patch-$1-rc$2.gz
     git apply --index patch-$1-rc$2
     echo "Patch-$1-rc$2 applied"
     head Makefile
     make -j2 all
     rc=$?; if [[ $rc != 0 ]]; then exit $rc; fi
     su -c "make modules_install install"
     echo Ready for reboot test of Linux-$1-$2
