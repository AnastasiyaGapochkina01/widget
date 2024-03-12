#!/bin/bash

# Очистка экрана
clear

# Горизонтальная линия
hline="─────────────────────────────────────────────────────────────────────────────────────────────────────────"

# Вертикальная линия
vline="│"

# Верхняя часть плитки
function draw_top {
    echo "╭$hline╮"
}

# Средняя часть плитки с текстом
function draw_middle {
    local text="$1"
    echo "$vline $text$(printf "%$((103 - ${#text}))s") $vline"
}

# Нижняя часть плитки
function draw_bottom {
    echo "╰$hline╯"
}

# Отрисовка панели из 4 плиток
draw_top
draw_middle "Date: $(date +"%m-%d-%Y")"
draw_bottom
draw_top
draw_middle "Time: $(date +"%H:%M:%S")"
draw_bottom
draw_top
draw_middle "$(./weather)"
draw_bottom
draw_top
draw_middle "ToDo list"
draw_bottom

