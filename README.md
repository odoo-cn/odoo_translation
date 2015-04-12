# odoo_translation

#建议使用PO bundle 





#导出与导入

## 图形方式
至 导入/导出，选择 导入翻译

在弹窗
输入 语言名 以及代码， 并选择下载的 po 文件
勾选 覆盖已存在的术语

语言名  	Chinese (CN) / 简体中文
代码  	zh_CN
	

Tips：
导入翻译之前，最好先删除旧有的翻译


参考下面

至菜单 "已翻译术语"

设置筛选器
语言，比如 Chinese (CN) / 简体中文

以及相关模块，比如 account


这样会列出全部与account模块相关的已翻译术语


可以修改 列表显示数量，以便可以列出全部的与account模块相关的已翻译术语

选择全部，然后删除。


## 命令行方式

使用下面的命令导出翻译..

     # !/bin/bash
     python openerp-server -c $openerp.conf --stop-after-init -d $database -l zh_CN --i18n-export=$po_file --modules=$module_list
   
   
   


使用下面的命令导入翻译.

     # !/bin/bash
     python openerp-server -c $openerp.conf --stop-after-init -d $database -l zh_CN --i18n-import=$po_file --overwrite
   
   
   


