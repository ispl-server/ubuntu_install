
folder=$1

echo "changing permission of "$folder
chmod -R 775 $folder/
echo "creating ids and home folders"
for id in `more $folder.txt`
do
echo -e $id
useradd $id -s /bin/bash
mkdir  /$folder/$id
usermod -d /$folder/$id $id
sudo cp /home/ispl/.bashrc /$folder/$id
sudo chown -R $id /$folder/$id
echo $id:$id | chpasswd
done
