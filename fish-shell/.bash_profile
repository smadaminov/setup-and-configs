# If authentication is not done through `/etc/passwd` (think LDAP) then `.bash_profile` can be
# be updated to alleviate that problem
if [ "$SHELL" == "/bin/bash" ]
then
    export SHELL="/usr/bin/fish" # change with the actual location of `fish`
    exec /usr/bin/fish -l
fi
