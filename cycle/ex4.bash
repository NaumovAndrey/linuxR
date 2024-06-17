#!/bin/bash
# строка с разделителями-точками
line="one.two.three"
# Сохраняем текущее значение IFS
OLDIFS=$IFS
# Меняем IFS на точку
IFS='.'
# Читаем строку в массив, используя IFS
read -a array <<< "$line"
# Возвращаем IFS прежнее значение
IFS=$OLDIFS
# Выводим массив
for element in "${array[@]}"
do
echo "$element"
done