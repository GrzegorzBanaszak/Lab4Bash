#!/bin/bash

if [ "$1" == "--help" ]
then
    current_date=$(date +"%Y-%m-%d")
    echo "Dzisiejsza data: $current_date"
fi




if [ "$1" == "--logs"  ] && [[ $2 =~ ^[0-9]+$ ]]
then
    for ((i=1; i<=$2; i++))
    do
        touch "log$i.txt"
        echo "Utworzono plik log$i.txt"
    done
elif [ "$1" == "--logs" ]
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
