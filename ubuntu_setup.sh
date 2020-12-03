echo ========================================
echo       update, upgrade apt, apt-get
echo ========================================
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt update -y
sudo apt upgrade -y
echo ========================================
echo              ssh setup
echo ========================================
sudo apt-get install openssh-server -y
sudo apt-get install ssh -y
sudo sed -i -e 's/#Port 22/Port 416/g' /etc/ssh/sshd_config
sudo sed -i -e 's/#MaxAuthTries 6/MaxAuthTries 5/g' /etc/ssh/sshd_config
sudo systemctl restart ssh.service
echo ========================================
echo        disable automatic update
echo ========================================
sudo sed -i -e 's/Update-Package-Lists "1"/Update-Package-Lists "0"/g' /etc/apt/apt.conf.d/10periodic
echo ========================================
echo        install basic packages
echo ========================================
sudo apt-get install vim zip git unzip net-tools screen tmux htop cpulimit gparted lm-sensors -y
echo ========================================
echo     install nvidia-driver 455
echo ========================================
sudo apt-get install nvidia-driver-455 -y 
echo ========================================
echo            install cudnn 
echo ========================================
sudo apt install nvidia-cuda-toolkit -y
echo ========================================
echo things left to do ...
echo 1. HDD mount
echo 2. make ids
echo 3. reboot
echo ========================================
