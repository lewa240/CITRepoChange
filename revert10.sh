#!/bin/bash

echo "Инициализация..."

rm -rf /etc/apt/sources.list.d/sisa.list

cat << EOF > "/etc/apt/sources.list.d/heanet.list"
# ftp.heanet.ie (HEAnet, Ireland)

#ALT Platform 10
#rpm [p10] ftp://ftp.heanet.ie/mirrors/ftp.altlinux.org p10/branch/x86_64 classic
#rpm [p10] ftp://ftp.heanet.ie/mirrors/ftp.altlinux.org p10/branch/x86_64-i586 classic
#rpm [p10] ftp://ftp.heanet.ie/mirrors/ftp.altlinux.org p10/branch/noarch classic

#rpm [p10] http://ftp.heanet.ie/mirrors/ftp.altlinux.org p10/branch/x86_64 classic
#rpm [p10] http://ftp.heanet.ie/mirrors/ftp.altlinux.org p10/branch/x86_64-i586 classic
#rpm [p10] http://ftp.heanet.ie/mirrors/ftp.altlinux.org p10/branch/noarch classic

#rpm [p10] rsync://ftp.heanet.ie/mirrors/ftp.altlinux.org p10/branch/x86_64 classic
#rpm [p10] rsync://ftp.heanet.ie/mirrors/ftp.altlinux.org p10/branch/x86_64-i586 classic
#rpm [p10] rsync://ftp.heanet.ie/mirrors/ftp.altlinux.org p10/branch/noarch classic

EOF

cat << EOF > "/etc/apt/sources.list.d/ipsl.list"
# distrib-coffee.ipsl.jussieu.fr (Institut Pierre Simon Laplace, France)

#ALT Platform 10
#rpm [p10] ftp://distrib-coffee.ipsl.jussieu.fr/linux/altlinux p10/branch/x86_64 classic
#rpm [p10] ftp://distrib-coffee.ipsl.jussieu.fr/linux/altlinux p10/branch/x86_64-i586 classic
#rpm [p10] ftp://distrib-coffee.ipsl.jussieu.fr/linux/altlinux p10/branch/noarch classic

#rpm [p10] http://distrib-coffee.ipsl.jussieu.fr/linux/altlinux p10/branch/x86_64 classic
#rpm [p10] http://distrib-coffee.ipsl.jussieu.fr/linux/altlinux p10/branch/x86_64-i586 classic
#rpm [p10] http://distrib-coffee.ipsl.jussieu.fr/linux/altlinux p10/branch/noarch classic

#rpm [p10] rsync://distrib-coffee.ipsl.jussieu.fr/linux/altlinux p10/branch/x86_64 classic
#rpm [p10] rsync://distrib-coffee.ipsl.jussieu.fr/linux/altlinux p10/branch/x86_64-i586 classic
#rpm [p10] rsync://distrib-coffee.ipsl.jussieu.fr/linux/altlinux p10/branch/noarch classic

EOF

cat << EOF > "/etc/apt/sources.list.d/yandex.list"
# mirror.yandex.ru (Yandex, Moscow)

#ALT Platform 10
#rpm [p10] ftp://mirror.yandex.ru/altlinux p10/branch/x86_64 classic
#rpm [p10] ftp://mirror.yandex.ru/altlinux p10/branch/x86_64-i586 classic
#rpm [p10] ftp://mirror.yandex.ru/altlinux p10/branch/noarch classic

#rpm [p10] http://mirror.yandex.ru/altlinux p10/branch/x86_64 classic
#rpm [p10] http://mirror.yandex.ru/altlinux p10/branch/x86_64-i586 classic
#rpm [p10] http://mirror.yandex.ru/altlinux p10/branch/noarch classic

#rpm [p10] rsync://mirror.yandex.ru/altlinux p10/branch/x86_64 classic
#rpm [p10] rsync://mirror.yandex.ru/altlinux p10/branch/x86_64-i586 classic
#rpm [p10] rsync://mirror.yandex.ru/altlinux p10/branch/noarch classic

EOF

cat << EOF > "/etc/apt/sources.list.d/alt.list"
# ftp.altlinux.org (ALT Linux, Moscow)

#ALT Platform 10
#rpm [p10] ftp://ftp.altlinux.org/pub/ftp.altlinux.org p10/branch/x86_64 classic
#rpm [p10] ftp://ftp.altlinux.org/pub/ftp.altlinux.org p10/branch/x86_64-i586 classic
#rpm [p10] ftp://ftp.altlinux.org/pub/ftp.altlinux.org p10/branch/noarch classic

rpm [p10] http://ftp.altlinux.org/pub/ftp.altlinux.org p10/branch/x86_64 classic
rpm [p10] http://ftp.altlinux.org/pub/ftp.altlinux.org p10/branch/x86_64-i586 classic
rpm [p10] http://ftp.altlinux.org/pub/ftp.altlinux.org p10/branch/noarch classic

#rpm [p10] rsync://ftp.altlinux.org/pub/ftp.altlinux.org p10/branch/x86_64 classic
#rpm [p10] rsync://ftp.altlinux.org/pub/ftp.altlinux.org p10/branch/x86_64-i586 classic
#rpm [p10] rsync://ftp.altlinux.org/pub/ftp.altlinux.org p10/branch/noarch classic

EOF

apt-get update

echo "Готово!"
