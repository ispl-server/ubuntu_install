echo "hello world"
#folder = $1
echo -e $1

for id in `more $1.txt`
do
echo -e $id
echo $id:Sp880Isp1810Asp!@# | chpasswd
passwd -e $id
done

