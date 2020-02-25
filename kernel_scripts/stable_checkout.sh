#!/bin/bash
     ## SPDX-License-Identifier: GPL-2.0
     # Copyright(c) Shuah Khan <skhan@linuxfoundation.org>
     #
     # License: GPLv2
     # Example usage: stable_checkout.sh <stable-release-version e.g 5.2>
     mkdir -p stable
     cd stable
     git clone git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git linux_$1_stable
     cd linux_$1_stable
     git checkout linux-$1.y
     #cp /boot/ .config # update script​
