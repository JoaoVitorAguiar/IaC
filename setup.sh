#!/bin/bash

## DIRECTORIES

DIRS=("/public" "/adm" "/ven" "/sec")

# Create directories if they do not exist
for DIR in "${DIRS[@]}"; do
    if [ ! -d "$DIR" ]; then
        mkdir "$DIR"
        echo "Directory '$DIR' created."
    else
        echo "Directory '$DIR' already exists."
    fi
done

## GROUPS

GROUPS=("GRP_ADM" "GRP_VEN" "GRP_SEC")

# Create groups if they do not exist
for GROUP in "${GROUPS[@]}"; do
    if ! getent group "$GROUP" > /dev/null; then
        groupadd "$GROUP"
        echo "Group '$GROUP' created."
    else
        echo "Group '$GROUP' already exists."
    fi
done


## USERS

USERS_ADM=("carlos" "maria" "joao")
USERS_VEN=("debora" "sebastiana" "roberto")
USERS_SEC=("josefina" "amanda" "rogerio")

# Create users and add them to the appropriate groups

for USER in "${USERS_ADM[@]}"; do
    useradd "$USER" -m -s /bin/bash -G GRP_ADM
    passwd -e "$USER"  
    echo "User '$USER' created and added to group 'GRP_ADM'."
done

for USER in "${USERS_VEN[@]}"; do
    useradd "$USER" -m -s /bin/bash -G GRP_VEN
    passwd -e "$USER"  
    echo "User '$USER' created and added to group 'GRP_VEN'."
done

for USER in "${USERS_SEC[@]}"; do
    useradd "$USER" -m -s /bin/bash -G GRP_SEC
    passwd -e "$USER"  
    echo "User '$USER' created and added to group 'GRP_SEC'."
done

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