# !/bin/bash

CONFIG=t.conf
DB=i18n

HOME_DIR=`pwd ~`

if [ ! -d $HOME_DIR/po ]; then
    mkdir $HOME_DIR/po
fi

if [ ! -d $HOME_DIR/po/addons ]; then
    mkdir $HOME_DIR/po/addons
fi

if [ ! -d $HOME_DIR/po/openerp ]; then
    mkdir $HOME_DIR/po/openerp
fi

if [ ! -d $HOME_DIR/po/openerp/addons ]; then
    mkdir $HOME_DIR/po/openerp/addons
fi

for m in `cat $HOME_DIR/addons.txt`
do 

if [ ! -d $HOME_DIR/po/addons/$m ]; then
    mkdir $HOME_DIR/po/addons/$m
fi

if [ ! -d $HOME_DIR/po/addons/$m/i18n ]; then
    mkdir $HOME_DIR/po/addons/$m/i18n
fi

python openerp-server -c $CONFIG --stop-after-init -d $DB --i18n-export=$HOME_DIR/po/addons/$m/i18n/zh_CN.po -l zh_CN --modules=$m

done

mv $HOME_DIR/po/addons/base  $HOME_DIR/po/openerp/addons

cd $HOME_DIR/
tar -cf po.tar  po/

echo done
