# !/bin/bash

if [ ! -d /home/ubuntu/po/addons ]; then
    mkdir /home/ubuntu/po/addons
fi

for m in `cat /home/ubuntu/addons.txt`
do 

if [ ! -d /home/ubuntu/po/addons/$m ]; then
    mkdir /home/ubuntu/po/addons/$m
fi

if [ ! -d /home/ubuntu/po/addons/$m/i18n ]; then
    mkdir /home/ubuntu/po/addons/$m/i18n
fi

python openerp-server -c t.conf --stop-after-init -d i18n --i18n-export=/home/ubuntu/po/addons/$m/i18n/zh_CN.po -l zh_CN --modules=$m

done

cd /home/ubuntu/
tar -cf po.tar  po/

echo done
