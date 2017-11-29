<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html lang="en">
 <head>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
     <meta name="Author" content="Fire">
     <meta name="Keywords" content="keys">
     <meta name="Description" content="">
     <title>Java开发智能机器人IM聊天系统【京东】</title>
     <!--css/js-->
     
     <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
     <script type="text/javascript">
     $(function()
     {
         $("#c_sub_btn").click(function()
         {
             var value=$("#message").text();
             $(".c_con").append("<div class='c_item c_right'>"+
		                        "<span class='c_text'>"+value+"</span>:<span class='c_name'>huo</span>"+  
		                        "</div>");
		     $.ajax({
		       type:"post",//请求类型
		       url:"data.jsp",
		       data:{info:value},
		       success:function(data)
		       {
		          var json=JSON.parse(data);
		          $(".c_con").append("<div class='c_item c_left'>"+
	                                 "<img src='images/2.png' alt='JiMi' width='50' height='50'/>&nbsp;&nbsp;"+json.text+"</div>");
		       }
		     });         
		                    
         });
        
     });
     
     </script>
     <style type="text/css">
	 *{margin:0;padding:0}
	 body{background-color:#FFDAC8;background-size:cover;font-size:15px;font-family:"微软雅黑";color:#171717;}
	 
	 
	 <!--图片居中-->
	 img{vertical-align:middle;}
	 .chat{width:900px;height:530px;background:#bcbcbc;margin:100px auto}
    
	 .chat .c_top{height:68px;background-color:#6699ff;font-size:20px;line-height:68px;color:#FFFFFF;
	 padding-left:15px;cursor:move;}
     .chat .c_con{height:380px;background-color:#ebebeb);overflow:auto;background-image:url(images/back1.jpg);background-size:cover;}
	 .chat .c_con .c_item{height:40px;width:870px;}
	 .chat .c_con .c_left{padding:10px 10px 0 10px;float:left;}
	 .chat .c_con .c_right{padding:40px 10px 0 10px;text-align:right;margin-right:40px;}
     .chat .c_con .c_right .c_name{height:50px;width:50px;display:inline-block;background:#ffffff;border-radius:25px;line-height:50px;text-align:center;background:url("images/3.png");}
     .chat .c_message{height:82px;background-color:#E3E3E3;}
	 .chat .c_message .c_edit{height:62px;width:760px;background:#f9f9f9;float:left;outline:none;padding:10px;}
     .chat .c_message .c_btn .c_sub{width:120px;height:82px;float:right;cursor:pointer;border:none;#C2C2C2;outline:none;}
     
     
     /**滚动条优化
     */
     ::-webkit-scrollbar {  
                 width: 14px;  
                 height: 14px;  
     }  
  
     ::-webkit-scrollbar-track,  
     ::-webkit-scrollbar-thumb {  
                 border-radius: 999px;  
                 border: 5px solid transparent;  
     }  
  
     ::-webkit-scrollbar-track {  
                 box-shadow: 1px 1px 5px rgba(0,0,0,.2) inset;  
     }  
  
     ::-webkit-scrollbar-thumb {  
                 min-height: 20px;  
                 background-clip: content-box;  
                 box-shadow: 0 0 0 5px rgba(0,0,0,.2) inset;  
     }  
  
     ::-webkit-scrollbar-corner {  
                 background: transparent;  
    }  
	 </style>
  </head>   
<body>
   <div class="chat" >
     <div class="c_top">智能客服机器人 -V1.0</div>
	   <div class="c_con">
	    </div>
	 
	  <div class="c_message">
	     <div class="c_edit" contenteditable="true" id="message"></div>
		 <div class="c_btn">
		 <input type="button" class="c_sub" id="c_sub_btn" value="发送消息"/>
		 </div>
	  </div>
   </div>
</body>
</html>