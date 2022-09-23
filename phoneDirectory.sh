#!/bin/bash

# Creating Loop To Work Multiple Times
while :
do
    # Adding Options to the Landing Page
    echo "--------------------------"
    echo "Welcome to Phone Directory"
    echo "--------------------------"
    echo ""
    echo "1. New Contact"
    echo "2. Delete Contact"
    echo "3. Search Contact"
    echo "4. View Directory"
    echo "5. Exit"

    # Taking User Input For Selecting Option
    echo ""
    read -p "Enter your choise: " user
    clear

    # Creating Test Case For Options
    case $user in

        1) # "New Contact" Option
            echo "---------------"
            echo "Add New Contact"
            echo "---------------"

            read -p "Enter Name     : " name
            read -p "Enter Number   : " number
            clear

            # Showning Contact Information
            echo "-----------------------"
            echo "New Contact Information"
            echo "-----------------------"
            echo "Name  : $name"
            echo "Number: $number"
            echo ""
            echo "Contact Added Successfully!!!"

            # Adding Contact To Database
            echo "$name : $number" >> logBook.log
        ;;

        2)

        ;;

        3)

        ;;

        4)

        ;;

        5)
        break
        ;;

        *)
        echo "INVALID OPARATION"
        ;;
    esac

    # Creating Exit Option
    read -p "Press Any Key For Continue or Press 5 To Exit: " exit

    if [ $exit -eq 5] ; then
        break
    fi
done