#!/bin/bash
################################################################
##################### SOFTWARE #####################
################################################################
export LANGUAGE=C
export LC_ALL=C
export LANG=C

#dpkg-divert --local --rename --add /sbin/initctl 
#ln -s /bin/true /sbin/initctl

apt-get -y update
# software to compile code
apt-get -y --force-yes install build-essential libattr* attr make m4 gettext libmhash-dev gdebi-core gawk

source /opt/opengnsys/lib/engine/bin/ToolsGNU.c

which ctorrent || ctorrent install

which udp-sender || udpcast install

which ms-sys || ms-sys install

which partclone.ntfs || $(wget -O partclone_0.2.16_i386.deb http://downloads.sourceforge.net/project/partclone/stable/0.2.16/partclone_0.2.16_i386.deb?use_mirror=ovh; gdebi -n partclone_0.2.16_i386.deb) 


which spartlnx.run || $(cd /tmp; wget http://damien.guibouret.free.fr/savepart.zip; unzip savepart.zip -d /sbin/)


