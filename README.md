# Vagrant-Ubuntu-22.04-and-PAM360

Install instructions

Clone Repo and Vagrant Up
SSH into your Vagrant box ## vagrant ssh

Install PAM360
$ sudo -i
# su - pam360
$ cd /home/pam360/ && ./ManageEngine_PAM360_64bit.bin ## Leave everything as default and select option 1 for Master Server

Start PAM360 Service
$ cd /home/pam360/ManageEngine/PAM360/bin
$ ./pam360.sh start
$ ./pam360-service start
$ tail -f ../logs/wrapper.log  ##Wait for the service to be up and listening to port 8282

Example:

INFO   | jvm 1    | 2025/03/10 20:10:27 | Server started in :: [86323 ms]
INFO   | jvm 1    | 2025/03/10 20:10:27 |
INFO   | jvm 1    | 2025/03/10 20:10:27 | Connect to: [ https://vagrant:8282 ]

Go to your host computer browser and access it (https://localhost:8282/)
Default admin and password: admin