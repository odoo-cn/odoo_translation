# odoo_translation

使用下面的命令导出翻译..

     # !/bin/bash
     python openerp-server -c $openerp.conf --stop-after-init -d $database -l zh_CN --i18n-export=$po_file --modules=$module_list
   
   
   


使用下面的命令导入翻译.

     # !/bin/bash
     python openerp-server -c $openerp.conf --stop-after-init -d $database -l zh_CN --i18n-import=$po_file --overwrite
   
   
   


