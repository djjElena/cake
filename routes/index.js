const express=require("express");
const router=express.Router();
const pool=require('../pool.js');

//index
router.get('/',(req,res)=>{
	var sql="SELECT * FROM cake_xilie_item";
	pool.query(sql,[],(err,result)=>{
		if(err) console.send(err);
		res.send(result);
	})
});
module.exports=router;