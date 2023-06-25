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

if [ "$1" == "--init" ]
then
    # URL twojego repozytorium
    REPO_URL="https://github.com/GrzegorzBanaszak/Lab4Bash"
    
    # Klonowanie repozytorium do obecnego katalogu
    git clone $REPO_URL .
    
    # Dodanie obecnego katalogu do zmiennej środowiskowej PATH
    export PATH=$PATH:$(pwd)
fi

if [ "$1" == "--logs"  ] && [[ $2 =~ ^[0-9]+$ ]] || [ "$1" == "-l"  ] && [[ $2 =~ ^[0-9]+$ ]]
then
    for ((i=1; i<=$2; i++))
    do
        # Pobieramy aktualną datę
        current_date=$(date)
        
        # Tworzenie katalogu
        mkdir -p "log$i"
        
        # Tworzenie pliku
        touch "log$i/log$i.txt"
        
        # Dodawanie informacji do pliku
        echo "Nazwa pliku: log$i/log$i.txt" >> "log$i/log$i.txt"
        echo "Nazwa skryptu: $script_name" >> "log$i/log$i.txt"
        echo "Data: $current_date" >> "log$i/log$i.txt"
    done
elif [ "$1" == "--logs" ] || [ "$1" == "-l" ]
then
    # Ustalamy nazwę skryptu
    script_name=$(basename "$0")
    
    #Iterujemy od 1 do 100
    for i in {1..100}
    do
        
        # Pobieramy aktualną datę
        current_date=$(date)
        
        # Tworzenie katalogu
        mkdir -p "log$i"
        
        # Tworzenie pliku
        touch "log$i/log$i.txt"
        
        # Dodawanie informacji do pliku
        echo "Nazwa pliku: log$i/log$i.txt" >> "log$i/log$i.txt"
        echo "Nazwa skryptu: $script_name" >> "log$i/log$i.txt"
        echo "Data: $current_date" >> "log$i/log$i.txt"
    done
fi


if [ "$1" == "--error"  ] && [[ $2 =~ ^[0-9]+$ ]] || [ "$1" == "-e"  ] && [[ $2 =~ ^[0-9]+$ ]]
then
    for ((i=1; i<=$2; i++))
    do
        # Pobieramy aktualną datę
        current_date=$(date)
        
        # Tworzenie katalogu
        mkdir -p "error$i"
        
        # Tworzenie pliku
        touch "error$i/error$i.txt"
        
        # Dodawanie informacji do pliku
        echo "Nazwa pliku: error$i/error$i.txt" >> "error$i/error$i.txt"
        echo "Nazwa skryptu: $script_name" >> "error$i/error$i.txt"
        echo "Data: $current_date" >> "error$i/error$i.txt"
    done
elif [ "$1" == "--error" ] || [ "$1" == "-e" ]
then
    # Ustalamy nazwę skryptu
    script_name=$(basename "$0")
    
    #Iterujemy od 1 do 100
    for i in {1..100}
    do
        
        # Pobieramy aktualną datę
        current_date=$(date)
        
        # Tworzenie katalogu
        mkdir -p "error$i"
        
        # Tworzenie pliku
        touch "error$i/error$i.txt"
        
        # Dodawanie informacji do pliku
        echo "Nazwa pliku: error$i/error$i.txt" >> "error$i/error$i.txt"
        echo "Nazwa skryptu: $script_name" >> "error$i/error$i.txt"
        echo "Data: $current_date" >> "error$i/error$i.txt"
    done
fi