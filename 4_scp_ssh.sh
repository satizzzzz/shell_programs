#!/bin/bash

perform_ssh(){
    read -p "Enter User Name: " user
    read -p "Enter ip addr: " ip
    
    ssh $user@$ip
}

perform_scp(){
    read -p "
        1. Local to Remote
        2. Remote to Local " choice
    case $choice in
        1)
         echo "Local to remote copy"
         read -p "Enter local file path: " path
         read -p "Enter remote user: " user
         read -p "Enter remote ip addr: " ip
         read -p "Enter remote path: " remote_path
         
         scp $path $user@$ip:$remote_path
         ;;
         2)
         echo "Remote to local copy"
         read -p "Enter local file path: " path
         read -p "Enter remote user: " user
         read -p "Enter remote ip addr: " ip
         read -p "Enter remote path: " remote_path
         
         scp $user@$ip:$remote_path $path
         ;;
         *)
         echo "Invalid Choice"
         ;;
    esac
}
while true; do
    read -p "Enter any of the below choice
            1. SSH
            2. SCP
            3. Exit " choice

    case $choice in 
        1)
         echo "SSH into machine"
         perform_ssh
         ;;
        2)
         echo "SCP into machine"
         perform_scp
         ;;
        3)
         echo "exiting"
         exit 0
         ;;
        *)
         echo " Invalid Choice"
         ;;
    esac
done