#!/bin/bash


## iac 01

## DIRECTORIES

# Create directories if they do not exist
if [ ! -d "/public" ]; then
    mkdir "/public"
    echo "Directory '/public' created."
else
    echo "Directory '/public' already exists."
fi

if [ ! -d "/adm" ]; then
    mkdir "/adm"
    echo "Directory '/adm' created."
else
    echo "Directory '/adm' already exists."
fi

if [ ! -d "/ven" ]; then
    mkdir "/ven"
    echo "Directory '/ven' created."
else
    echo "Directory '/ven' already exists."
fi

if [ ! -d "/sec" ]; then
    mkdir "/sec"
    echo "Directory '/sec' created."
else
    echo "Directory '/sec' already exists."
fi

## GROUPS

# Create groups if they do not exist
if ! getent group "GRP_ADM" > /dev/null; then
    groupadd "GRP_ADM"
    echo "Group 'GRP_ADM' created."
else
    echo "Group 'GRP_ADM' already exists."
fi

if ! getent group "GRP_VEN" > /dev/null; then
    groupadd "GRP_VEN"
    echo "Group 'GRP_VEN' created."
else
    echo "Group 'GRP_VEN' already exists."
fi

if ! getent group "GRP_SEC" > /dev/null; then
    groupadd "GRP_SEC"
    echo "Group 'GRP_SEC' created."
else
    echo "Group 'GRP_SEC' already exists."
fi


## USERS

# Create users and add them to the appropriate groups
useradd "carlos" -m -s /bin/bash -G GRP_ADM
passwd -e "carlos"  
echo "User 'carlos' created and added to group 'GRP_ADM'."

useradd "maria" -m -s /bin/bash -G GRP_ADM
passwd -e "maria"  
echo "User 'maria' created and added to group 'GRP_ADM'."

useradd "joao" -m -s /bin/bash -G GRP_ADM
passwd -e "joao"  
echo "User 'joao' created and added to group 'GRP_ADM'."


useradd "debora" -m -s /bin/bash -G GRP_VEN
passwd -e "debora"  
echo "User 'debora' created and added to group 'GRP_VEN'."

useradd "sebastiana" -m -s /bin/bash -G GRP_VEN
passwd -e "sebastiana"  
echo "User 'sebastiana' created and added to group 'GRP_VEN'."

useradd "roberto" -m -s /bin/bash -G GRP_VEN
passwd -e "roberto"  
echo "User 'roberto' created and added to group 'GRP_VEN'."


useradd "josefina" -m -s /bin/bash -G GRP_SEC
passwd -e "josefina"  
echo "User 'josefina' created and added to group 'GRP_SEC'."

useradd "amanda" -m -s /bin/bash -G GRP_SEC
passwd -e "amanda"  
echo "User 'amanda' created and added to group 'GRP_SEC'."

useradd "rogerio" -m -s /bin/bash -G GRP_SEC
passwd -e "rogerio"  
echo "User 'rogerio' created and added to group 'GRP_SEC'."


echo "All users were created and added to their respective groups!"
echo "Each user will be prompted to change their password on the first login."


# PERMISSIONS

# Set permissions for the directories
chmod 777 /public
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

# Set the setgid bit on department directories to ensure new files inherit group
chmod g+s /adm
chmod g+s /ven
chmod g+s /sec

echo "Permissions have been set up according to the specifications."
