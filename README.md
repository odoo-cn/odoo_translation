TOC

2.  参与翻译
2.  使用翻译



*参与翻译*

 repo 指库
 master repo 指主库，即 https://github.com/odoo-cn/odoo_translation.git


# 准备工作

申请github账号，略


## Fork  翻译项目

至master repo.的github页面 https://github.com/odoo-cn/odoo_translation
![image](https://cloud.githubusercontent.com/assets/1404460/7194463/201e0e56-e4e2-11e4-826b-ae8b9bd90c51.png)



点击 fork 建立一个克隆

Tips:  
你必须有github 账号，才可以fork。 给gihub账号申请，不再累述。

fork需要一定的时间
![image](https://cloud.githubusercontent.com/assets/1404460/7194464/263abcd0-e4e2-11e4-8d45-7bd6e46c1a6c.png)



Fork 好之后，就可以在你的github账号下看到你的fork
![image](https://cloud.githubusercontent.com/assets/1404460/7194466/2b7e65de-e4e2-11e4-9057-b2460c49b9d8.png)





## 将fork repo 克隆到本地

在github上选择repo的 URL， 最好选择 ssh。 
因为github上传你的提交需要使用ssh进行无密码验证身份。
![image](https://cloud.githubusercontent.com/assets/1404460/7194467/30295710-e4e2-11e4-9614-0d2626fd6766.png)



### 克隆repo.

执行命令 git clone 
如
![image](https://cloud.githubusercontent.com/assets/1404460/7194468/34447bb8-e4e2-11e4-9822-3a5acb7f9ccf.png)


### 更新repo

因为在你fork   odoo-cn/odoo_translation 之后， master repo.可能已经更新了，为了保持你的repo.为最新，你需要 与maste repo.同步
首先，添加master repo. 到你的库里，执行命令
 git remot add https://github.com/odoo-cn/odoo_translation.git

如
![image](https://cloud.githubusercontent.com/assets/1404460/7194470/392c67d0-e4e2-11e4-90cd-3de64f7349c3.png)




同步主库，执行命令
 git pull master  master    # 后一个master是 分支的名字

如
![image](https://cloud.githubusercontent.com/assets/1404460/7194471/3ce42c78-e4e2-11e4-8d74-a3e6c0607e20.png)


此时，你的本地库与odoo-cn/odoo_translation主库是同步的。

# 翻译工作


首先为翻译工作建立一个分支，例如 project
 git checkout master -b project

![image](https://cloud.githubusercontent.com/assets/1404460/7194474/42ab2ab2-e4e2-11e4-978e-e037bb534f3c.png)


建议在bundle基础上进行翻译

建议使用poedit

![image](https://cloud.githubusercontent.com/assets/1404460/7194475/4627d55a-e4e2-11e4-8ab0-696caff2bac6.png)


翻译好之后，保存


# 提交翻译成果

保存翻译之后，如果执行命令 git status
会发现修改的po文件会显示

![image](https://cloud.githubusercontent.com/assets/1404460/7194477/4b775bde-e4e2-11e4-892c-a9b4af53a132.png)


如果执行命令 git diff 还可以查看 修改的部分，例如

![image](https://cloud.githubusercontent.com/assets/1404460/7194495/a2d535ea-e4e2-11e4-99a1-fe614f3d00a2.png)


## 提交修改

翻译成果需要提交到repo里面， 使用以下命令提交修改
 git add *.po
 git commit  -m ‘提交的消息’    # ‘提交的消息’ 为摘要信息，方便其他人查看，以及备将来自己查看。

例如

![image](https://cloud.githubusercontent.com/assets/1404460/7194505/c23d57d2-e4e2-11e4-9bd0-97f096781dd0.png)


## 将本地repo 同步到fork repo

需要将本地的repo 同步到 fork repo，这样其他协作的人才能看到你的工作成果。
执行命令 git push --all origin 进行同步，如

![image](https://cloud.githubusercontent.com/assets/1404460/7194482/63acfcc2-e4e2-11e4-91fa-78ede0093951.png)


完成同步之后，去你的github，可以看到提交的工作成果。

![image](https://cloud.githubusercontent.com/assets/1404460/7194483/6825c0f4-e4e2-11e4-9d4f-26679669a258.png)

你可以看到你提交的工作成果


# 申请合并到master  repo.

你的本地修改提交到你的fork repo之后，还需要合并到master repo，这样，其他与人协作的人才能使用你的工作成果。

在你进行提交的时候，github能识别到你的新分支和提交，它会建议你提交一个pull request， 如
![image](https://cloud.githubusercontent.com/assets/1404460/7194487/7a2e32a4-e4e2-11e4-8e15-ffc44993fc56.png)



点击 compare & pull request

![image](https://cloud.githubusercontent.com/assets/1404460/7194488/7d044cc0-e4e2-11e4-8792-4af689898a1d.png)


填写提交信息，然后 create pull request


*使用翻译*


*建议使用PO bundle*


#导出与导入翻译

## 图形方式
至 导入/导出，选择 导入翻译

![alt tag](https://cloud.githubusercontent.com/assets/1404460/7104782/7e53c2ce-e12a-11e4-85e7-6dd6409ab0d8.png)

*如果你没有看到 导入/导出 ， 那是因为你的账号没有开启‘技术特性’权限*

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
   
   
   


