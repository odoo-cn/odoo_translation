# !/bin/bash
file=/home/ubuntu/bundle/*.csv
for f in $file 
do
echo 'import po file' $f
python openerp-server -c t.conf -d i18n --stop-after-init  -l zh_CN  --i18n-overwrite  --i18n-import=$f
echo 'done.'
done
