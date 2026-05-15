#!/bin/bash

LOG_FILE="../logs/system.log"
BACKUP_DIR="../backups"

# Create log file if not exists
touch $LOG_FILE

# Logging function
log_action() {
    echo "$(date) : $1" >> $LOG_FILE
}

# Add User Function
add_user() {
    read -p "Enter username to add: " username

    sudo useradd $username

    if [ $? -eq 0 ]; then
        echo "User '$username' added successfully."
        log_action "User added: $username"
    else
        echo "Failed to add user."
        log_action "Failed to add user: $username"
    fi
}

# Delete User Function
delete_user() {
    read -p "Enter username to delete: " username

    sudo userdel $username

    if [ $? -eq 0 ]; then
        echo "User '$username' deleted successfully."
        log_action "User deleted: $username"
    else
        echo "Failed to delete user."
        log_action "Failed to delete user: $username"
    fi
}

# Backup Function
backup_directory() {
    read -p "Enter directory path to backup: " dir_path

    if [ -d "$dir_path" ]; then

        backup_name="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

        tar -czvf "$BACKUP_DIR/$backup_name" "$dir_path" > /dev/null 2>&1

        echo "Backup created: $backup_name"

        log_action "Backup created: $backup_name"

    else
        echo "Directory does not exist."
        log_action "Backup failed for: $dir_path"
    fi
}

# View Logs
view_logs() {
    cat $LOG_FILE
}

# Main Menu
while true
do
    echo ""
    echo "====================================="
    echo " Linux Automation Toolkit"
    echo "====================================="
    echo "1. Add User"
    echo "2. Delete User"
    echo "3. Backup Directory"
    echo "4. View Logs"
    echo "5. Exit"
    echo "====================================="

    read -p "Choose an option: " choice

    case $choice in

        1)
            add_user
            ;;

        2)
            delete_user
            ;;

        3)
            backup_directory
            ;;

        4)
            view_logs
            ;;

        5)
            echo "Exiting Toolkit..."
            exit 0
            ;;

        *)
            echo "Invalid option. Try again."
            ;;

    esac

done
