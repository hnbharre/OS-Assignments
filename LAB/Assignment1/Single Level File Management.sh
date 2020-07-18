# Single Level File Management
# Harshal Bharre Roll: 022
echo "\nCreate a Directory"
read dname
mkdir $dname
cd $dname

i="y"
while [ $i = "y" ]
do
echo "\nMenu"
echo "==========================="
echo "1. Create File"
echo "2. Search File"
echo "3. Delete File"
echo "4. Rename File"
echo "5. View Directory Contents"
echo "6. Change Directory"
echo "7. Exit"
echo "==========================="
echo "Enter Your Choice"
read choice

case $choice in
1)
echo "Enter File Name: "
read fname
if [ -f $fname ]
then
echo "File already exits"

else
touch $fname
echo "File Successfully Created"
fi;;

2)
echo "Enter File Name: "
read sname
if [ -f $sname ]
then
echo "File Exists"

else
echo "No Such File Exists"
fi;;

3)
echo "Enter the File to be Deleted: "
read dname1
if [ -f $dname1 ]
then
rm $dname1
echo "File Sucessfully Deleted"

else
echo "No such File Exists"
fi;;

4)
echo "Enter the File Name to be renamed: "
read old_fname
echo "Enter the New File Name: "
read new_fname
mv $old_fname $new_fname ;;

5)
echo "Present Working Directory is:"
pwd;
echo "\nFiles in Directory are:"
ls;
;;

6)
echo "Are you want, go to the home directory (Y/N)?"
read ch
if [ $ch = "Y" ]
then
cd ~
echo "You are in home directory"

else
echo "Enter the Directory choice"
read cdir
#cd /home/user/$cdir
cd ~/$cdir
fi;;

7)
i="n";;

esac

done