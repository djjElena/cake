(async function(){
    var res=await ajax({
      url:"http://localhost:8000/shopping/",
      type:"get",
      dataType:"json"
    });
    console.log(res);
    new Vue({
      el:".right",
      data:{
        res
      }
    })

    //按钮的加减
    var jiajian=document.getElementById("jiajian");
    var btns=document.getElementsByTagName("button");
    console.log(btns);
    for(var btn of btns){
        btn.onclick=function(){
            var btn=this;
            var span = btn.parentNode.children[1];
            var n=parseInt(span.innerHTML);
            if(btn==span.nextElementSibling){
                n++;
            }
            else if(n>1){
                n--;
            }
            span.innerHTML=n;
        }
    }  
  })()


