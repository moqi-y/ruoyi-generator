# ruoyi-generator

#### 介绍

若依代码生成器，可在本地运行，无需依赖服务器。

#### 项目说明

1. [若依](https://gitee.com/y_project/RuoYi)代码生成器，可在本地运行，无需依赖服务器。 
2. 修改自[Ricky/code-generator](https://gitee.com/lpf_project/code-generator)，但因为对sqlite表结构有调整，所以无法兼容原项目。
3. 支持 MySQL、Oracle 数据源，其它未测试。
4. 支持 [RuoYi v4.7.8](https://gitee.com/y_project/RuoYi/releases/tag/v4.7.8)
5. 支持 [RuoYi-Vue v3.8.7](https://gitee.com/y_project/RuoYi-Vue/releases/tag/v3.8.7)
6. 支持 [RuoYi-Vue3 v3.8.7](https://github.com/yangzongzhuan/RuoYi-Vue3/releases/tag/v3.8.7)

#### 打包方法

1. 手动执行命令： `mvn clean package -Dmaven.test.skip=true -Pprod`
2. 执行打包脚本： `./bin/win_package.bat` 或 `./bin/linux_mac_package.sh`
3. 使用 idea 工具中的 Maven 插件，选择 `prod`、`Profiles` 打包
4. 以上方法三选一即可

#### 注意事项

1. 数据库采用sqlite，位置在`src\main\resources\static\sqlite\ruoyi-generator.db`，发布后请将db文件放在jar包的同级sqlite目录中
2. 将打包后的 jar 包放入 bin 目录，执行 bin 目录下的 `win_start.bat` 或 `linux_mac_start.sh`，可启动代码生成器

## 使用方法
1、打开`src/main/java/com/ruoyi/RuoYiApplication.java`目录，运行`RuoYiApplication`公共类
2、再控制台输出中找到页面地址，打开页面，点击页面右上角`数据源`，然后点击列表上方的"增加"按钮增加数据源
3、新增一个`mysql`数据库，然后将该数据库的相关链接及密码输入，在页面添加数据库连接，数据库连接成功后即可在列表中看到数据源。
4、在自己新增的`mysql`数据库中新建数据表，然后回到代码生成页面，即可导入该表，实现生成代码

#### 参与贡献
1. Fork 本仓库
2. 新建 Feat_xxx 分支
3. 提交代码
4. 新建 Pull Request

