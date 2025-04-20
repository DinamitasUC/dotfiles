#!/usr/bin/env bash

# Define las opciones del menú
options=(
    "  Apagar"
    "  Reiniciar"
    "  Suspender"
    "  Cerrar sesión"
)

# Convierte el array en una cadena separada por líneas
choice=$(printf "%s\n" "${options[@]}" | rofi -dmenu -i -p "Sistema" -theme ~/.config/rofi/power-menu.rasi)

case "$choice" in
    *Apagar)
        systemctl poweroff
        ;;
    *Reiniciar)
        systemctl reboot
        ;;
    *Suspender)
        systemctl suspend
        ;;
    *Cerrar*)
        i3-msg exit || bspc quit || pkill -KILL -u "$USER"
        ;;
    *)
        exit 1
        ;;
esac


