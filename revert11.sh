#!/bin/bash

echo "Инициализация..."

rm -rf /etc/apt/sources.list.d/sisa.list

cat << EOF > "/etc/apt/sources.list.d/heanet.list"
# ftp.heanet.ie (HEAnet, Ireland)

#ALT Platform 11
#rpm [p11] ftp://ftp.heanet.ie/mirrors/ftp.altlinux.org p11/branch/x86_64 classic
#rpm [p11] ftp://ftp.heanet.ie/mirrors/ftp.altlinux.org p11/branch/x86_64-i586 classic
#rpm [p11] ftp://ftp.heanet.ie/mirrors/ftp.altlinux.org p11/branch/noarch classic

#rpm [p11] http://ftp.heanet.ie/mirrors/ftp.altlinux.org p11/branch/x86_64 classic
#rpm [p11] http://ftp.heanet.ie/mirrors/ftp.altlinux.org p11/branch/x86_64-i586 classic
#rpm [p11] http://ftp.heanet.ie/mirrors/ftp.altlinux.org p11/branch/noarch classic

#rpm [p11] rsync://ftp.heanet.ie/mirrors/ftp.altlinux.org p11/branch/x86_64 classic
#rpm [p11] rsync://ftp.heanet.ie/mirrors/ftp.altlinux.org p11/branch/x86_64-i586 classic
#rpm [p11] rsync://ftp.heanet.ie/mirrors/ftp.altlinux.org p11/branch/noarch classic

EOF

cat << EOF > "/etc/apt/sources.list.d/ipsl.list"
# distrib-coffee.ipsl.jussieu.fr (Institut Pierre Simon Laplace, France)

#ALT Platform 11
#rpm [p11] ftp://distrib-coffee.ipsl.jussieu.fr/linux/altlinux p11/branch/x86_64 classic
#rpm [p11] ftp://distrib-coffee.ipsl.jussieu.fr/linux/altlinux p11/branch/x86_64-i586 classic
#rpm [p11] ftp://distrib-coffee.ipsl.jussieu.fr/linux/altlinux p11/branch/noarch classic

#rpm [p11] http://distrib-coffee.ipsl.jussieu.fr/linux/altlinux p11/branch/x86_64 classic
#rpm [p11] http://distrib-coffee.ipsl.jussieu.fr/linux/altlinux p11/branch/x86_64-i586 classic
#rpm [p11] http://distrib-coffee.ipsl.jussieu.fr/linux/altlinux p11/branch/noarch classic

#rpm [p11] rsync://distrib-coffee.ipsl.jussieu.fr/linux/altlinux p11/branch/x86_64 classic
#rpm [p11] rsync://distrib-coffee.ipsl.jussieu.fr/linux/altlinux p11/branch/x86_64-i586 classic
#rpm [p11] rsync://distrib-coffee.ipsl.jussieu.fr/linux/altlinux p11/branch/noarch classic

EOF

cat << EOF > "/etc/apt/sources.list.d/yandex.list"
# mirror.yandex.ru (Yandex, Moscow)

#ALT Platform 11
#rpm [p11] ftp://mirror.yandex.ru/altlinux p11/branch/x86_64 classic
#rpm [p11] ftp://mirror.yandex.ru/altlinux p11/branch/x86_64-i586 classic
#rpm [p11] ftp://mirror.yandex.ru/altlinux p11/branch/noarch classic

#rpm [p11] http://mirror.yandex.ru/altlinux p11/branch/x86_64 classic
#rpm [p11] http://mirror.yandex.ru/altlinux p11/branch/x86_64-i586 classic
#rpm [p11] http://mirror.yandex.ru/altlinux p11/branch/noarch classic

#rpm [p11] rsync://mirror.yandex.ru/altlinux p11/branch/x86_64 classic
#rpm [p11] rsync://mirror.yandex.ru/altlinux p11/branch/x86_64-i586 classic
#rpm [p11] rsync://mirror.yandex.ru/altlinux p11/branch/noarch classic

EOF

cat << EOF > "/etc/apt/sources.list.d/alt.list"
# ftp.altlinux.org (ALT Linux, Moscow)

#ALT Platform 11
#rpm [p11] ftp://ftp.altlinux.org/pub/ftp.altlinux.org p11/branch/x86_64 classic
#rpm [p11] ftp://ftp.altlinux.org/pub/ftp.altlinux.org p11/branch/x86_64-i586 classic
#rpm [p11] ftp://ftp.altlinux.org/pub/ftp.altlinux.org p11/branch/noarch classic

rpm [p11] http://ftp.altlinux.org/pub/ftp.altlinux.org p11/branch/x86_64 classic
rpm [p11] http://ftp.altlinux.org/pub/ftp.altlinux.org p11/branch/x86_64-i586 classic
rpm [p11] http://ftp.altlinux.org/pub/ftp.altlinux.org p11/branch/noarch classic

#rpm [p11] rsync://ftp.altlinux.org/pub/ftp.altlinux.org p11/branch/x86_64 classic
#rpm [p11] rsync://ftp.altlinux.org/pub/ftp.altlinux.org p11/branch/x86_64-i586 classic
#rpm [p11] rsync://ftp.altlinux.org/pub/ftp.altlinux.org p11/branch/noarch classic

EOF

apt-get update

echo "Готово!"
