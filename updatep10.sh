#!/bin/bash
set -e

echo "Инициализация..."

rm -f /etc/apt/sources.list.d/sisa.list

for file in /etc/apt/sources.list.d/*.list; do
    if [ -f "$file" ]; then
        sed -i 's/^[^#]/#&/' "$file"
    fi
done

cat << 'EOF' > /etc/apt/sources.list.d/sisa.list
rpm http://10.0.50.50/sisa p10/x86_64 classic
rpm http://10.0.50.50/sisa p10/noarch classic
EOF

apt-get update

echo "Готово!"
