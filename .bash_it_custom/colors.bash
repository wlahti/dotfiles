# shellcheck shell=bash
# vi: set ft=sh:

## Color escapes
# if [ -n "$color_terminal" ]; then
#     # Reset
#     Color_Off="\[$(tput sgr0)\]"                # Text Reset

#     # Regular Colors
#     Black="\[$(tput setaf 0)\]"                 # Black
#     Red="\[$(tput setaf 1)\]"                   # Red
#     Green="\[$(tput setaf 2)\]"                 # Green
#     Yellow="\[$(tput setaf 3)\]"                # Yellow
#     Blue="\[$(tput setaf 4)\]"                  # Blue
#     Purple="\[$(tput setaf 5)\]"                # Purple
#     Cyan="\[$(tput setaf 6)\]"                  # Cyan
#     White="\[$(tput setaf 7)\]"                 # White

#     # Bold
#     BBlack="\[$(tput bold; tput setaf 0)\]"     # Black
#     BRed="\[$(tput bold; tput setaf 1)\]"       # Red
#     BGreen="\[$(tput bold; tput setaf 2)\]"     # Green
#     BYellow="\[$(tput bold; tput setaf 3)\]"    # Yellow
#     BBlue="\[$(tput bold; tput setaf 4)\]"      # Blue
#     BPurple="\[$(tput bold; tput setaf 5)\]"    # Purple
#     BCyan="\[$(tput bold; tput setaf 6)\]"      # Cyan
#     BWhite="\[$(tput bold; tput setaf 7)\]"     # White

#     # Underline
#     UBlack="\[$(tput smul; tput setaf 0)\]"     # Black
#     URed="\[$(tput smul; tput setaf 1)\]"       # Red
#     UGreen="\[$(tput smul; tput setaf 2)\]"     # Green
#     UYellow="\[$(tput smul; tput setaf 3)\]"    # Yellow
#     UBlue="\[$(tput smul; tput setaf 4)\]"      # Blue
#     UPurple="\[$(tput smul; tput setaf 5)\]"    # Purple
#     UCyan="\[$(tput smul; tput setaf 6)\]"      # Cyan
#     UWhite="\[$(tput smul; tput setaf 7)\]"     # White

#     # Background
#     On_Black="\[$(tput setab 0)\]"              # Black
#     On_Red="\[$(tput setab 1)\]"                # Red
#     On_Green="\[$(tput setab 2)\]"              # Green
#     On_Yellow="\[$(tput setab 3)\]"             # Yellow
#     On_Blue="\[$(tput setab 4)\]"               # Blue
#     On_Purple="\[$(tput setab 5)\]"             # Purple
#     On_Cyan="\[$(tput setab 6)\]"               # Cyan
#     On_White="\[$(tput setab 7)\]"              # White

#     # High Intensty
#     IBlack="\[$(tput setaf 8)\]"                # Black
#     IRed="\[$(tput setaf 9)\]"                  # Red
#     IGreen="\[$(tput setaf 10)\]"               # Green
#     IYellow="\[$(tput setaf 11)\]"              # Yellow
#     IBlue="\[$(tput setaf 12)\]"                # Blue
#     IPurple="\[$(tput setaf 13)\]"              # Purple
#     ICyan="\[$(tput setaf 14)\]"                # Cyan
#     IWhite="\[$(tput setaf 15)\]"               # White

#     # Bold High Intensty
#     BIBlack="\[$(tput bold; tput setaf 8)\]"    # Black
#     BIRed="\[$(tput bold; tput setaf 9)\]"      # Red
#     BIGreen="\[$(tput bold; tput setaf 10)\]"   # Green
#     BIYellow="\[$(tput bold; tput setaf 11)\]"  # Yellow
#     BIBlue="\[$(tput bold; tput setaf 12)\]"    # Blue
#     BIPurple="\[$(tput bold; tput setaf 13)\]"  # Purple
#     BICyan="\[$(tput bold; tput setaf 14)\]"    # Cyan
#     BIWhite="\[$(tput bold; tput setaf 15)\]"   # White

#     # High Intensty backgrounds
#     On_IBlack="\[$(tput setab 8)\]"             # Black
#     On_IRed="\[$(tput setab 9)\]"               # Red
#     On_IGreen="\[$(tput setab 10)\]"            # Green
#     On_IYellow="\[$(tput setab 11)\]"           # Yellow
#     On_IBlue="\[$(tput setab 12)\]"             # Blue
#     On_IPurple="\[$(tput setab 13)\]"           # Purple
#     On_ICyan="\[$(tput setab 14)\]"             # Cyan
#     On_IWhite="\[$(tput setab 15)\]"            # White
# fi
