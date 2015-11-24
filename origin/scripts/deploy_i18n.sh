# !/bin/bash

HOME_DIR=/home/openerp
OE_DIR=/opt/openerp/server

echo starting

cd OE_DIR
cp -rv HOME_DIR/_build/odoo/*   .

echo done
