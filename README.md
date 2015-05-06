TOC

<!-- MarkdownTOC -->

- [0. 翻译策略](#guide)
- [1. 使用翻译](#use_it)
    - 1.1 使用翻译
        - 覆盖po文件
        - 同步术语
    - 1.2 导入翻译
        - 图形方式
        - 命令行方式
- [2. 参与翻译](#improve_it)
    - [2.1  git操作概述](#git_overview)
    - [2.2 准备工作](#prepare)
        - Fork  翻译项目
        - 将fork repo 克隆到本地
            - 克隆repo.
            - 更新repo
    - [2.3 进行翻译工作](#working)
    - 2.4 提交翻译成果
        - 提交修改
        - 将本地repo 同步到fork repo
    - 2.5 申请合并到master  repo.

<!-- /MarkdownTOC -->

<a name="guide"></a>
# 0. 翻译策略 [guide]

**先在 src/zh_CN.po的基础上完成翻译；因为有大量重复的词汇、短语，所以这样能节省时间**

原则

* base 模块里面关于其他模块的说明，无需翻译

* {} 包含的是 JS代码，无需翻译

* [] 包含的是 domain，无需翻译

* 原文里面 包含的html 标签，必须原样保留，无需翻译

* 贴近原文，符合专业标准

* 优先评审现有的中文翻译，评审时，参考 [术语表](glossary.md) 以及其他的翻译

* 优先翻译目前是英文的语句， 翻译之前，参考 [术语表](glossary.md) 以及其他的翻译

* 其次为长语句，长段落

* 第一阶段的任务对象是 src/zh_CN.po 

**src/zh_CN.po完全翻译之后，再在build/odoo 目录的单个po文件上优化翻译，针对不同的应用，进行优化。**


<a name="use_it"></a>
# 1. 使用翻译  [use_it]

建议使用po bundle，即所有模块的翻译合并在一起的po文件

src 目录，包含

    1. 全部常用模块的中文翻译，po格式，zh_CN.po   **所有的翻译工作都在此文件的基础上进行**

~~2. 全部常用模块的中文翻译，csv格式，zh_CN.csv~~

build 目录 **翻译成果** ,包含   

    1. 模块的po文件, 按odoo addons目录结构 存放在 odoo目录下

    2. 业务功能po文件集合，按业务功能命名 存放在 bundle目录下

scripts 目录，包含

    1. po文件 构建脚本

    2. po文件 部署脚本

reference 目录，包含

    1. 专业词典 【会计词典】


<a name="None"></a>
## 1.1 使用翻译

<a name="None"></a>
### 覆盖po文件

**build/odoo目录包含了常用模块的i18n 中文翻译包，可以用来直接覆盖系自带的翻译**

使用 build/odoo 目录 覆盖 odoo 目录



<a name="None"></a>
### 同步术语

至菜单 翻译 - 应用程序术语 - 同步术语 


![image](https://cloud.githubusercontent.com/assets/1404460/7243590/7e900788-e801-11e4-9294-10a0f21a450e.png)

选择语言 简体中文， 点击按钮 更新



<a name="None"></a>
## 1.2 导入翻译

<a name="None"></a>
### 图形方式
至 导入/导出，选择 导入翻译

![alt tag](https://cloud.githubusercontent.com/assets/1404460/7104782/7e53c2ce-e12a-11e4-85e7-6dd6409ab0d8.png)

**如果你没有看到 导入/导出 ， 那是因为你的账号没有开启‘技术特性’权限**

在弹窗

![alt tag](https://cloud.githubusercontent.com/assets/1404460/7104785/83be0a1c-e12a-11e4-89a1-ed1cc5c5800a.png)

输入 语言名 以及代码， 并选择下载的 po 文件
勾选 覆盖已存在的术语


 field	|  value
--------| -------------
语言名	| 	Chinese (CN) / 简体中文
代码	| 	zh_CN
	




Tips：
>导入翻译之前，最好先删除旧有的翻译, odoo 翻译导入的overwrite选项似乎不起作用



>参考下面

>![alt tag](https://cloud.githubusercontent.com/assets/1404460/7104786/872b23a6-e12a-11e4-9a2b-39bd84d5a672.png)

>至菜单 "已翻译术语"

>设置筛选器
>语言，比如 Chinese (CN) / 简体中文

>![alt tag](https://cloud.githubusercontent.com/assets/1404460/7104788/8a4a9558-e12a-11e4-9163-dbde20ec246e.png)


>以及相关模块，比如 account

>![alt tag](https://cloud.githubusercontent.com/assets/1404460/7104789/8e0553b8-e12a-11e4-9312-a93962feed98.png)



>这样会列出全部与account模块相关的已翻译术语

>![alt tag](https://cloud.githubusercontent.com/assets/1404460/7104790/91d3e6c6-e12a-11e4-9b31-2d027bccf2a5.png)



>可以修改 列表显示数量，以便可以列出全部的与account模块相关的已翻译术语

>选择全部，然后删除。


<a name="None"></a>
### 命令行方式

  


使用下面的命令导入翻译.

     # !/bin/bash
     python openerp-server -c $openerp.conf --stop-after-init -d $database -l zh_CN --i18n-import=$po_file --overwrite
   
   
   




<a name="improve_it"></a>
# 2. 参与翻译  [improve_it]

**翻译时参考 [词汇表](glossary.md)**

 repo 是repository的缩写， 即 库
 
 master repo 是指主库，即 https://github.com/odoo-cn/odoo_translation.git
 
 fork repo 是指你的克隆

<a name="git_overview"></a>
## 2.1  git操作概述  [git_overview]

增加master repo  

    git remote add  master https://github.com/odoo-cn/odoo_translation.git # 增加 master repo 地址。

同步master repo

    git checkout master  # 切换至master分支

    git pull master master  # 第一个master 是指 master repo ; 后一个master 是指 master 分支。

建立翻译工作的分支

    git checkout master  # 切换至master分支

    git checkout -b new_branch  # new_branch 是指进行翻译工作的分支，必须建立，否则无法申请pull request

将翻译分支发布到你在github的 repo.

    git push --all origin  # 将分支发布到github 


申请pull request...

略，参考 [申请合并到master  repo.](#pull_request)


**更详细情况，请阅读下面部分**



<a name="prepare"></a>
## 2.2 准备工作  [prepare]

申请github账号，略


<a name="None"></a>
### Fork  翻译项目

至master repo.的github页面 https://github.com/odoo-cn/odoo_translation

![image](https://cloud.githubusercontent.com/assets/1404460/7194463/201e0e56-e4e2-11e4-826b-ae8b9bd90c51.png)



点击 fork 建立一个克隆

Tips:  
你必须有github 账号，才可以fork。 

fork需要一定的时间

![image](https://cloud.githubusercontent.com/assets/1404460/7194464/263abcd0-e4e2-11e4-8d45-7bd6e46c1a6c.png)



Fork 好之后，就可以在你的github账号下看到你的fork

![image](https://cloud.githubusercontent.com/assets/1404460/7194466/2b7e65de-e4e2-11e4-9057-b2460c49b9d8.png)





<a name="None"></a>
### 将fork repo 克隆到本地

在github上选择repo的 URL， 最好选择 ssh。 
因为github上传你的提交需要使用ssh进行无密码验证身份。

![image](https://cloud.githubusercontent.com/assets/1404460/7194467/30295710-e4e2-11e4-9614-0d2626fd6766.png)



<a name="None"></a>
#### 克隆repo.

执行命令 git clone 
如

![image](https://cloud.githubusercontent.com/assets/1404460/7194468/34447bb8-e4e2-11e4-9822-3a5acb7f9ccf.png)


<a name="None"></a>
#### 更新repo

因为在你fork   odoo-cn/odoo_translation 之后， master repo.可能已经更新了，为了保持你的repo.为最新，你需要 与master repo.同步

首先，添加master repo. 到你的库里，执行命令

    git remot add master https://github.com/odoo-cn/odoo_translation.git

如

![image](https://cloud.githubusercontent.com/assets/1404460/7194470/392c67d0-e4e2-11e4-90cd-3de64f7349c3.png)




同步主库，执行命令

    git pull master  master    # 后一个master是 分支的名字

如

![image](https://cloud.githubusercontent.com/assets/1404460/7194471/3ce42c78-e4e2-11e4-8d74-a3e6c0607e20.png)


此时，你的本地库与odoo-cn/odoo_translation主库是同步的。

<a name="working"></a>
## 2.3 进行翻译工作  [working]


首先为翻译工作建立一个分支，例如 project

    git checkout master -b project

![image](https://cloud.githubusercontent.com/assets/1404460/7194474/42ab2ab2-e4e2-11e4-978e-e037bb534f3c.png)


建议在bundle基础上进行翻译

建议使用poedit

![image](https://cloud.githubusercontent.com/assets/1404460/7194475/4627d55a-e4e2-11e4-8ab0-696caff2bac6.png)


翻译好之后，保存


<a name="None"></a>
## 2.4 提交翻译成果

保存翻译之后，如果执行命令 git status

会发现修改的po文件会显示

![image](https://cloud.githubusercontent.com/assets/1404460/7194477/4b775bde-e4e2-11e4-892c-a9b4af53a132.png)


如果执行命令 git diff 还可以查看 修改的部分，例如

![image](https://cloud.githubusercontent.com/assets/1404460/7194495/a2d535ea-e4e2-11e4-99a1-fe614f3d00a2.png)


<a name="None"></a>
### 提交修改

翻译成果需要提交到repo里面， 使用以下命令提交修改

    git add *.po

    git commit  -m ‘提交的消息’    # ‘提交的消息’ 为摘要信息，方便其他人查看，以及备将来自己查看。

例如

![image](https://cloud.githubusercontent.com/assets/1404460/7194505/c23d57d2-e4e2-11e4-9bd0-97f096781dd0.png)


<a name="None"></a>
### 将本地repo 同步到fork repo

需要将本地的repo 同步到 fork repo，这样其他协作的人才能看到你的工作成果。

执行命令 git push --all origin 进行同步，如

![image](https://cloud.githubusercontent.com/assets/1404460/7194482/63acfcc2-e4e2-11e4-91fa-78ede0093951.png)


完成同步之后，去你的github，可以看到提交的工作成果。

![image](https://cloud.githubusercontent.com/assets/1404460/7194483/6825c0f4-e4e2-11e4-9d4f-26679669a258.png)

你可以看到你提交的工作成果

<a name="None"></a>
## 2.5 申请合并到master  repo.

你的本地修改提交到你的fork repo之后，还需要合并到master repo，这样，其他与人协作的人才能使用你的工作成果。

在你进行提交的时候，github能识别到你的新分支和提交，它会建议你提交一个pull request， 如

![image](https://cloud.githubusercontent.com/assets/1404460/7194487/7a2e32a4-e4e2-11e4-8e15-ffc44993fc56.png)



点击 compare & pull request

![image](https://cloud.githubusercontent.com/assets/1404460/7194488/7d044cc0-e4e2-11e4-8792-4af689898a1d.png)


填写提交信息，然后 create pull request

