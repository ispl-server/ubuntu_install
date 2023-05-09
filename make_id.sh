
folder=$1

echo "changing permission of "$folder
chmod -R 775 /$folder
echo "creating ids and home folders"
for id in `more $folder.txt`
do
echo -e $id
useradd $id -s /bin/bash
usermod -d /$folder/$id $id
sudo cp /home/ispl/.bashrc /$folder/$id
sudo chown -R $id /$folder/$id
echo $id:Sp880Isp1810Asp!@# | chpasswd
passwd -e $id
done
