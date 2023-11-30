#!/bin/bash

# Function to display LinuxDroid logo
display_logo() {
    echo "  _____ _           _   _            _     _"
    echo " |  __ (_)         | | (_)          | |   | |"
    echo " | |__) | _ __ ___ | |_ _  __ _  ___| | __| |"
    echo " |  ___/ | '__/ _ \| __| |/ _\` |/ __| |/ _\` |"
    echo " | |   | | | | (_) | |_| | (_| | (__| | (_| |"
    echo " |_|   |_|_|  \___/ \__|_|\__,_|\___|_|\__,_|"
    echo ""
}

# Function to display colored text
color_text() {
    local text="$1"
    local color="$2"
    echo -e "\e[${color}m$text\e[0m"
}

while true; do
    clear
    display_logo  # Display the logo initially

    echo "Select operating system you want to install:"
    echo "1. $(color_text 'Kali' '94')"
    echo "2. $(color_text 'Ubuntu' '93')"
    echo "3. $(color_text 'Arch' '94')"
    echo "4. $(color_text 'Debian' '34')"
    echo "5. $(color_text 'Manjaro' '92')"
    echo "6. $(color_text 'Void' '95')"
    echo "7. $(color_text 'Alpine' '92')"
    echo "8. $(color_text 'Fedora' '91')"
    echo "9. $(color_text 'Nethunter Rootless' '34')"
    echo "10. $(color_text 'Parrot' '96')"
    echo "11. Exit"


    read -p "Enter your choice (1-11): " os_choice

    case $os_choice in
        1|2|3|4|5|6|7|8|9|10)
            clear
            echo "You selected: "
            case $os_choice in
                1) os_name="Kali";;
                2) os_name="Ubuntu";;
                3) os_name="Arch";;
                4) os_name="Debian";;
                5) os_name="Manjaro";;
                6) os_name="Void";;
                7) os_name="Alpine";;
                8) os_name="Fedora";;
                9) os_name="Nethunter Root less (Android specialize linux)";;
                10) os_name="Parrot";;
            esac

            echo "1. GUI version"
            echo "2. CLI version"
            read -p "Enter version choice (1-2): " version_choice

            # Hide the logo after GUI/CLI selection
            clear

            case $version_choice in
                1)
                    echo "Installing GUI version of $os_name..."
                    case $os_choice in
                        1) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali-xfce.sh -O kali-xfce.sh && chmod +x kali-xfce.sh && bash kali-xfce.sh";;
                        2) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu22/ubuntu22-xfce.sh -O ubuntu22-xfce.sh && chmod +x ubuntu22-xfce.sh && bash ubuntu22-xfce.sh";;
                        3) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Arch/armhf/arch-xfce.sh -O arch-xfce.sh && chmod +x arch-xfce.sh && bash arch-xfce.sh";;
                        4) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Debian/debian-xfce.sh -O debian-xfce.sh && chmod +x debian-xfce.sh &&  bash debian-xfce.sh";;
                        5) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Manjaro/manjaro-xfce.sh -O manjaro-xfce.sh && chmod +x manjaro-xfce.sh && bash manjaro-xfce.sh";;
                        6) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Void/void-xfce.sh && chmod +x void-xfce.sh && bash void-xfce.sh";;
                        7) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Alpine/alpinexfce.sh -O alpinexfce.sh && chmod +x alpinexfce.sh && bash alpinexfce.sh";;
                        8) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Fedora/fedora-xfce.sh -O fedora-xfce.sh && chmod +x fedora-xfce.sh && bash fedora-xfce.sh";;
                        9) cmd="termux-setup-storage && pkg install wget && wget -O install-nethunter-termux https://offs.ec/2MceZWr && chmod +x install-nethunter-termux && ./install-nethunter-termux";;
                        10) cmd="parrot command to install";;
                    esac
                    ;;
                2)
                    echo "Installing CLI version of $os_name..."
                    case $os_choice in
                        1) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali.sh -O kali.sh && chmod +x kali.sh && bash kali.sh";;
                        2) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu22/ubuntu22.sh -O ubuntu22.sh && chmod +x ubuntu22.sh && bash ubuntu22.sh";;
                        3) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Arch/armhf/arch.sh -O arch.sh && chmod +x arch.sh && bash arch.sh";;
                        4) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Debian/debian.sh -O debian.sh && chmod +x debian.sh && bash debian.sh";;
                        5) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Manjaro/manjaro.sh -O manjaro.sh && chmod +x manjaro.sh && bash manjaro.sh";;
                        6) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Void/void.sh && chmod +x void.sh && bash void.sh";;
                        7) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Alpine/alpine.sh -O alpine.sh && chmod +x alpine.sh && bash alpine.sh";;
                        8) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Fedora/fedora.sh -O fedora.sh && chmod +x fedora.sh && bash fedora.sh";;
                        9) cmd="sudo apt update -y && sudo apt upgrade -y";;
                        10) cmd="parrot command to install";;
                    esac
                    ;;
                *)
                    echo "Invalid choice. Please enter 1 or 2."
                    continue
                    ;;
            esac

            # Execute the selected command
            eval "$cmd"
            read -p "Press Enter to continue..."
            ;;
        11)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 11."
            ;;
    esac
done
