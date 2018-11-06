const express=require("express");
const router=express.Router();
const pool=require('../pool.js');

//shopping
router.get('/',(req,res)=>{
	var sql="SELECT * FROM cake_detail";
	pool.query(sql,[],(err,result)=>{
		if(err) console.send(err);
		res.send(result);
	})
});
module.exports=router;