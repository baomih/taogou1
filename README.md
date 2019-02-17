环境搭建

1. 下载源码需要依赖的外部文件

```text
    npm i  或者  npm install
```

2. 创建数据库直接在数据库中执行建库脚本 **taogou.sql**
3. 修改数据库连接

```javascript
    //修改models文件夹里面的db.js中的数据库链接信息
    const pool  = mysql.createPool({
        host : '127.0.0.1',
        user : 'root',
        password : '',
        database : 'taogou'
    });
    //a)	host 数据库的ip地址
    //b)	user 数据库的用户名
    //c)	password 数据库密码
    //d)	database 数据库的库名
```

4. 启动项目

```text
    //进入项目目录
    npm start 
```