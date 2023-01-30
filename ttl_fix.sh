#!/bin/sh -e

touch /Library/LaunchDaemons/local.localhost.startup.plist
touch /etc/rc.local

echo "<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>             <string>local.localhost.startup</string>
    <key>Disabled</key>          <false/>
    <key>RunAtLoad</key>         <true/>
    <key>KeepAlive</key>         <false/>
    <key>LaunchOnlyOnce</key>    <true/>
    <key>ProgramArguments</key>
        <array>
            <string>/etc/rc.local</string>
        </array>
</dict>
</plist>
" > /Library/LaunchDaemons/local.localhost.startup.plist
echo "#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.

sysctl net.inet.ip.ttl=65

exit 0
" > /etc/rc.local

chmod +x /etc/rc.local

exit 0