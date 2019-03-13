# shellcheck shell=bash
# vi: set ft=sh:

if [[ "$(uname)" == "Darwin" ]]; then
    alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"
    alias battery='ioreg -c AppleSmartBattery -r'
    alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder" # Mac OS X 10.10 Mavericks
    alias locate="echo 'Use \`mdfind\` on Mac OS X.' && false"
    alias last_backup='tmutil compare "$(tmutil listbackups | sort | tail -2 | head -1)" "$(tmutil listbackups | sort | tail -1)"'
fi
