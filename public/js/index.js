(async function(){
  var res=await ajax({
    url:"http://localhost:8000/index/",
    type:"get",
    dataType:"json"
  });
  console.log(res);
  new Vue({
    el:".my_list",
    data:{
      res
    }
  })
  
})()
//测试: http://localhost:3000/index.html->F12
//结果:[{},{},{},{},{},{}]