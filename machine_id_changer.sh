#!/bin/bash

# Обновление системы
echo "Обновление системы..."
sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y
sudo apt install nano

# Замена machine-id
echo "Изменение machine-id..."

# Удаление текущего machine-id
sudo rm /etc/machine-id

# Генерация нового machine-id
sudo systemd-machine-id-setup

# Перезагрузка системы
echo "Перезагрузка системы..."
sudo reboot
