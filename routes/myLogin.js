const express = require("express");
const router =express.Router();
const pool = require("../pool");
router.post('/login',(req,res)=>{
	var obj = req.body;
	var $uname = obj.uname;
	var $upwd = obj.upwd;
	if(!$uname){
	  res.send('用户名为空');
	  return;
	}else if(!$upwd){
	  res.send('密码不能为空');
	  return;
	}
  var sql = 'SELECT * FROM cake_user WHERE uname = ? AND upwd = ?';
  pool.query(sql,[$uname,$upwd],(err,result)=>{
    if(err) throw err;
    console.log(result);
	if(result.length>0){
		res.send("登录成功");
	}else{
	  res.send("登录失败");
    }
    
  });
});

module.exports = router;