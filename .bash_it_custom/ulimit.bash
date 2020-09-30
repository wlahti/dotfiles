# shellcheck shell=bash
# vi: set ft=sh:

ulimit -n 8192 || true

# macOS Yosemite+
#
# Create /Library/LaunchDaemons/limit.maxfiles.plist and make
# sure it's owned by root:wheel with permissions 0644.
#
# <?xml version="1.0" encoding="UTF-8"?>
# <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
# <plist version="1.0">
# <dict>
#   <key>Label</key>
#   <string>limit.maxfiles</string>
#   <key>ProgramArguments</key>
#   <array>
#     <string>launchctl</string>
#     <string>limit</string>
#     <string>maxfiles</string>
#     <string>10240</string>
#     <string>10240</string>
#   </array>
#   <key>RunAtLoad</key>
#   <true/>
#   <key>ServiceIPC</key>
#   <false/>
# </dict>
# </plist>
