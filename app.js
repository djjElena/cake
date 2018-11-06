//使用express构建web服务器 --11:25
const express = require('express');
const bodyParser = require('body-parser');
/*引入路由模块*/
const index=require("./routes/index");
const shopping=require("./routes/shopping");

const myLogin = require("./routes/myLogin");

var app = express();
var server = app.listen(8000);
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'));
/*使用路由器来管理路由*/
app.use("/index",index);
               //.get("/")
//http://localhost:3000/index/
app.use("/shopping",shopping);
app.use("/myLogin",myLogin);
