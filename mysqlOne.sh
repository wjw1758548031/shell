#/bin/sh
 
#### change the values below where needed.....
#### DBNAMES="MyDb1 MyDb2 MyDb3"
DBNAMES="test"
 


# 执行备份
echo "kaishi"

#无线循环
while true
do
	
for B in $DBNAMES
do
   echo "done with" $DB
   DATE=`date +%F%k:%M:%S`
   NAME=test.sql
   SQLNAME=$DATE$NAME
   mysqldump -u root -h 127.0.0.1 -p123456  $DBNAMES > $SQLNAME
   cp $SQLNAME /root/mysql1
done

echo "=========================================="
echo "            done with all database!       "
echo "=========================================="
echo zhixing
	
#延迟5秒
sleep 5

done
exit 0 


