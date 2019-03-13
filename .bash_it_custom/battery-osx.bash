# shellcheck shell=bash
# vi: set ft=sh:

# Enable battery status if there's a battery
if [[ "$(uname)" == "Darwin" ]] && [[ -n "$(pmset -g batt)" ]]; then
    ENABLE_OSX_PS1_BATT="true"
fi

battery_osx() {
    if [ ! "$ENABLE_OSX_PS1_BATT" == "true" ]; then
        return
    fi

    local pmset_output powersource stats
    pmset_output=$(pmset -g batt)
    powersource=$(echo "$pmset_output" | \head -1 | \grep -o 'AC\|Battery')
    stats=$(echo "$pmset_output" | \tail -n+2 | cut -f2-)

    local percent_charged charging_state remaining
    percent_charged=$(echo "$stats" | awk -v FS='; ' '{print $1}' | sed -e 's/\%//g')
    charging_state=$(echo "$stats" | awk -v FS='; ' '{print $2}')
    remaining=$(echo "$stats" | awk -v FS='; ' '{print $3}' | cut -f1 -d' ')

    # If fully charged and connected to a power supply, skip status
    if [[ "$charging_state" == "charged" ]] && [[ $powersource == "AC" ]]; then
        return
    fi

    # Calculate the color
    IGreen="\[$(tput setaf 10)\]"
    Green="\[$(tput setaf 2)\]"
    Yellow="\[$(tput setaf 3)\]"
    IYellow="\[$(tput setaf 11)\]"
    Red="\[$(tput setaf 1)\]"
    IRed="\[$(tput setaf 9)\]"
    IWhite="\[$(tput setaf 15)\]"
    Color_Off="\[$(tput sgr0)\]"

    local color=""
    if [[ ${percent_charged} -le 100 ]] && [[ ${percent_charged} -gt 80 ]]; then
        color="$IGreen"
    elif [[ ${percent_charged} -le 80 ]] && [[ ${percent_charged} -gt 60 ]]; then
        color="$Green"
    elif [[ ${percent_charged} -le 60 ]] && [[ ${percent_charged} -gt 40 ]]; then
        color="$Yellow"
    elif [[ ${percent_charged} -le 40 ]] && [[ ${percent_charged} -gt 20 ]]; then
        color="$IYellow"
    elif [[ ${percent_charged} -le 20 ]] && [[ ${percent_charged} -gt 10 ]]; then
        color="$Red"
    elif [[ ${percent_charged} -le 10 ]] ; then
        color="$IRed"
    fi

    # Remaining time to charge/discharge
    local time_to="$remaining"
    [[ "$time_to" == "(no" ]] && time_to="?:??"
    [[ -n "$time_to" ]] && time_to=" $IWhite($FOUR_OCLOCK $time_to)$Color_Off"

    # Choose the icon
    local icon="$BATTERY "
    [[ "$powersource" == "AC" ]] && icon="$HIGH_VOLTAGE "
    echo "$icon$color$percent_charged%$Color_Off$time_to"
}
