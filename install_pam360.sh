#!/bin/bash

# Update and upgrade packages
sudo apt update -y
sudo apt upgrade -y
sudo apt-get install net-tools -y
sudo apt-get install unzip -y

# Install necessary dependencies (Java)
sudo apt install openjdk-17-jre-headless -y

# Download PAM360 Free Edition (Replace with the latest download link)
cd /home/pam360/ && wget https://www.manageengine.com/privileged-access-management/6167/ManageEngine_PAM360_64bit.bin

# Make the installer executable
chmod a+x ManageEngine_PAM360_64bit.bin

# Open ports in ufw firewall
sudo ufw allow out 3456/tcp   # PostgreSQL port (outbound)
sudo ufw allow 8282/tcp       # Web client port (inbound)
sudo ufw allow out 22/tcp     # SSH port (outbound)
sudo ufw allow 22/tcp         # SSH port (inbound)
sudo ufw allow out 23/tcp     # Telnet port (outbound)
sudo ufw allow out 389/tcp    # LDAP without SSL port (outbound)
sudo ufw allow out 636/tcp    # LDAP with SSL port (outbound)
sudo ufw allow out 25/tcp     # SMTP port (outbound)
sudo ufw allow out 1433/tcp   # MS SQL port (outbound)
sudo ufw allow out 1521/tcp   # Oracle port (outbound)
sudo ufw allow out 5000/tcp   # Sybase ASE port (outbound)
sudo ufw allow out 135/tcp    # Password Verification port (outbound)
sudo ufw allow out 139/tcp    # Password Verification port (outbound)
sudo ufw allow out 445/tcp    # Password Verification port (outbound)
sudo ufw allow 8283/tcp       # Auto Logon Spark View Gateway port (inbound)
sudo ufw allow out 3389/tcp   # RDP (outbound)
sudo ufw allow 6622/tcp       # SSH API (inbound)
sudo ufw allow 8282/tcp       # REST API (inbound)
sudo ufw allow 8080/tcp       # Private CA-OCSP Responder Server port (inbound)
yes | sudo ufw enable         # Enable the firewall