#!/bin/bash

if [ "$1" == "--date" ] || [ "$1" == "-d" ]
then
    current_date=$(date +"%Y-%m-%d")
    echo "Dzisiejsza data: $current_date"
fi

if [ "$1" == "--help" ] || [ "$1" == "-h" ]
then
    echo "Dostępne komendy"
    echo "--date wyświetla aktualną datę"
    echo "--logs Tworzy 100 plików log"
    echo "--logs [i] Tworzy i plików log"
fi


if [ "$1" == "--logs"  ] && [[ $2 =~ ^[0-9]+$ ]] || [ "$1" == "-l"  ] && [[ $2 =~ ^[0-9]+$ ]]
then
    for ((i=1; i<=$2; i++))
    do
        touch "log$i.txt"
        echo "Utworzono plik log$i.txt"
    done
elif [ "$1" == "--logs" ] || [ "$1" == "-l" ]
then
    # Ustalamy nazwę skryptu
    script_name=$(basename "$0")
    
    #Iterujemy od 1 do 100
    for i in {1..100}
    do
        # Tworzymy nazwę pliku
        file_name="log$i.txt"
        
        # Pobieramy aktualną datę
        current_date=$(date)
        
        # Wpisujemy informacje do pliku
        echo "Nazwa pliku: $file_name" > $file_name
        echo "Nazwa skryptu: $script_name" >> $file_name
        echo "Data: $current_date" >> $file_name
    done
fi
