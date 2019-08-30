#### This script checks user is present on system or not  ##########


#!/bi/bash

read -p "Enter user name to check for existance :  " username

cat /etc/passwd | grep $username  >/dev/null 2>&1
if [[ $? -eq 0 ]]
then
        echo "User $username is present in system."
else
        echo "User $username is not present in system."
fi
