printf "Start to SSH Optimazing"
cat ~/.ssh/config

echo "Enables the sharing of multiple SSH sessions over a single network connection, and auto-creating a master connection if it does not already exist."

printf 'ControlMaster auto \n' >~/.ssh/config

echo "specifies the path to the control socket used for connection sharing. %r will be substituted by the remote login username, %h by the target host name and %p by the port."

echo 'ControlPath /tmp/%r@%h:%p' >>~/.ssh/config
echo "keeps the master connection open in the background indefinitely"

echo 'ControlPersist yes ' >>~/.ssh/config
printf "Finished Optimazing SSH "


