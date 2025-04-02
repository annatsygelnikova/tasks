#!/bin/bash
while IFS= read -r file; do
    if [[ -e "$file" ]]; then
        if [[ -f "$file" ]]; then
            echo "$(wc -l < "$file") $file"
        else
            echo "Предупреждение: '$file' не является обычным файлом" >&2
        fi
    else
        echo "Ошибка: файл '$file' не найден" >&2
    fi
done <<< "$@"

