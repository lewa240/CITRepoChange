#!/bin/bash
set -e  # Остановить выполнение при ошибке
echo "Инициализация..."
# Удалить старый файл sisa.list, если он есть
rm -f /etc/apt/sources.list.d/sisa.list
# Закомментировать все строки во всех .list-файлах
for file in /etc/apt/sources.list.d/*.list; do
    if [ -f "$file" ]; then
        sed -i 's/^[^#]/#&/' "$file"
    fi
done
# Создать новый файл sisa.list с нужными репозиториями
cat << 'EOF' > /etc/apt/sources.list.d/sisa.list
rpm http://10.0.50.50/sisa p10/x86_64 classic
rpm http://10.0.50.50/sisa p10/noarch classic
EOF
# Обновить список пакетов
apt-get update
echo "Готово!"
