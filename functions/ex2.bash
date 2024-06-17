#!/bin/bash

# Глобальная переменная
global_var="Hello, Global!"

# Функция, использующая глобальную переменную
use_global_var() 
{
    echo "Inside the function: $global_var"
}

use_global_var

echo "$global_var"