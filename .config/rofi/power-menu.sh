#!/bin/bash

# Opciones del menú
options="  Apagar\n  Reiniciar\n  Suspender\n  Cerrar sesión"

# Mostrar menú con Rofi
selected=$(echo -e "$options" | rofi -dmenu -i -p "Menú de energía" -theme ~/.config/rofi/power-menu.rasi)

case "$selected" in
    *"Apagar"*)
        systemctl poweroff
        ;;
    *"Reiniciar"*)
        systemctl reboot
        ;;
    *"Suspender"*)
        systemctl suspend
        ;;
    *"Cerrar sesión"*)
        pkill -KILL -u $USER
        ;;
    *)
        exit 1
        ;;
esac
