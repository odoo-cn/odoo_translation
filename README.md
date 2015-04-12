

建议使用PO bundle


#导出与导入翻译

## 图形方式
至 导入/导出，选择 导入翻译

![alt tag](https://cloud.githubusercontent.com/assets/1404460/7104782/7e53c2ce-e12a-11e4-85e7-6dd6409ab0d8.png)

在弹窗

![alt tag](https://cloud.githubusercontent.com/assets/1404460/7104785/83be0a1c-e12a-11e4-89a1-ed1cc5c5800a.png)

输入 语言名 以及代码， 并选择下载的 po 文件
勾选 覆盖已存在的术语


 field	|  value
------------- | -------------
语言名	| 	Chinese (CN) / 简体中文
代码	| 	zh_CN
	

Tips：
导入翻译之前，最好先删除旧有的翻译


参考下面

![alt tag](https://cloud.githubusercontent.com/assets/1404460/7104786/872b23a6-e12a-11e4-9a2b-39bd84d5a672.png)

至菜单 "已翻译术语"

设置筛选器
语言，比如 Chinese (CN) / 简体中文

![alt tag](https://cloud.githubusercontent.com/assets/1404460/7104788/8a4a9558-e12a-11e4-9163-dbde20ec246e.png)


以及相关模块，比如 account

![alt tag](https://cloud.githubusercontent.com/assets/1404460/7104789/8e0553b8-e12a-11e4-9312-a93962feed98.png)



这样会列出全部与account模块相关的已翻译术语

![alt tag](https://cloud.githubusercontent.com/assets/1404460/7104790/91d3e6c6-e12a-11e4-9b31-2d027bccf2a5.png)



可以修改 列表显示数量，以便可以列出全部的与account模块相关的已翻译术语

选择全部，然后删除。


## 命令行方式

使用下面的命令导出翻译..

     # !/bin/bash
     python openerp-server -c $openerp.conf --stop-after-init -d $database -l zh_CN --i18n-export=$po_file --modules=$module_list
   
   
   


使用下面的命令导入翻译.

     # !/bin/bash
     python openerp-server -c $openerp.conf --stop-after-init -d $database -l zh_CN --i18n-import=$po_file --overwrite
   
   
   


