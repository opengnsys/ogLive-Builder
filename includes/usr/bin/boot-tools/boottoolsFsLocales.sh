#!/bin/bash
cat << EOT | debconf-set-selections --
console-setup console-setup/charmap47 select UTF-8
console-setup console-setup/codeset47 select . Combined - Latin; Slavic Cyrillic; Greek
console-setup console-setup/fontface47 select VGA
console-setup console-setup/fontsize-fb47 select 8x16
EOT
dpkg-reconfigure console-setup locales

history -c
