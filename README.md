# Vagrant-Ubuntu-22.04-and-PAM360

#Install instructions

Clone Repo and Vagrant Up <br/>
SSH into your Vagrant box ## vagrant ssh <br/>

#Install PAM360 
$ sudo -i <br/>
$ su - pam360 <br/>
$ cd /home/pam360/ && ./ManageEngine_PAM360_64bit.bin ## Leave everything as default and select option 1 for Master Server <br/>

#Start PAM360 Service
$ cd /home/pam360/ManageEngine/PAM360/bin <br/>
$ ./pam360.sh start <br/>
$ ./pam360-service start <br/>
$ tail -f ../logs/wrapper.log  ##Wait for the service to be up and listening to port 8282 <br/>

Example: <br/>

INFO   | jvm 1    | 2025/03/10 20:10:27 | Server started in :: [86323 ms] <br/>
INFO   | jvm 1    | 2025/03/10 20:10:27 | <br/>
INFO   | jvm 1    | 2025/03/10 20:10:27 | Connect to: [ https://vagrant:8282 ] <br/>

Go to your host computer browser and access it (https://localhost:8282/) <br/>
Default admin and password: admin