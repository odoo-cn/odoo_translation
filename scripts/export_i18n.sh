# !/bin/bash

for m in `cat /home/ubuntu/addons.txt`; do python openerp-server -c t.conf --stop-after-init -d i18n --i18n-export=$m.po -l zh_CN --modules=$m; done

mv *.po /home/ubuntu/po/
cd /home/ubuntu/
tar -cf po.tar  po/

echo done
