#!/bin/sh
echo ""
read -p 'MySQL db: ' DB
echo ""
read -p 'MySQL user: ' USER
echo ""
read -e -p 'MySQL host: ' -i "localhost" HOSTNAME
echo ""
read -s -p 'MySQL  password: ' PASSWORD
echo ""

mysql -N -u${USER} ${DB} -p${PASSWORD} -h ${HOSTNAME} --execute="show tables" | while read table; do mysql -u${USER} ${DB} -p${PASSWORD} -h ${HOSTNAME} -v -t --execute="describe $table"; echo -e "\n"; done


#localhost ki jaga apna rds endpoint dalna hota hai
