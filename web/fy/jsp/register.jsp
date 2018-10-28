<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/10 0010
  Time: 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="/fy/css/style.css" />
    <link rel="stylesheet" type="text/css" href="/fy/css/body.css"/>
</head>

<body>

<div id="register">
    <div class="container">
        <section id="content">
<h2>MiniDVD 网页版</h2>
<h4>用户注册</h4>
<form action="/fy/servlet/toRegister" method="get" onsubmit=" return checkRegister()">
    <%
        String msg=(String)session.getAttribute("MSG");
        if(msg!=null){
            out.print(msg);
        }else{
    %> <br> <% } %>
<p>账号：<input style="margin-left:30px" type="text" name="username" id="username"  value="<%if(session.getAttribute("name")!=null){out.print(session.getAttribute("name"));}%>" onblur="checkl()"/><br></p>
<p>密码：<input style="margin-left:30px " type="password" name="password" id="password"/><br></p>
<p>重复密码：<input type="password" name="passsword" id="passsword"/><br></p>

    <div>
     <input type="submit"  value="注册" />
     <a href="/fy/jsp/login.jsp" >登录</a>
    </div>

         </form>
      </section>
    </div>
</div>
<script type="text/javascript">

    function checkl(){

        var  myName=document.getElementById("username").value;
//1.创建Ajax 的 异步交互通信对象
        var xmlhttp;
        if (window.XMLHttpRequest)
        {
            //  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
            xmlhttp=new XMLHttpRequest(); //浏览器内置的组件
        }
        else
        {
            // IE6, IE5 浏览器执行代码
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        //2.监控请求的状态改变
        xmlhttp.onreadystatechange=function() {
            // alert("状态改变了");
            // 4.请求完毕，且 成功
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                // 5.把后台响应的东西，转过来
                //document.getElementById("login").innerHTML="<font color='red'>"+xmlhttp.responseText+"</font>";
                document.getElementById("register").innerHTML = xmlhttp.responseText;

            }
        }

        xmlhttp.open("GET","/fy/toCheckName?login="+myName,true);
        xmlhttp.send();

    }

    //检查注册表单
    function checkRegister()
    {
        //1.取值
        var  name=document.getElementById("username").value;
        var  pass=document.getElementById("password").value;
        var  passs=document.getElementById("passsword").value;
        //2.判断
        if(name!=""){
            if(pass!="") {
                if(passs!="") {
                    if(pass==passs) {
                        return true;
                    }else{
                        alert("两次密码输入不一致，请重输~");
                        document.getElementById("passsword").focus(); //光标占位
                        return false;
                    }
                }else{
                    alert("请再次输入密码~");
                    document.getElementById("passsword").focus(); //光标占位
                    return false;
                }
            }else{
                alert("亲，密码不能为空哦~");
                document.getElementById("password").focus(); //光标占位
                return false;
            }
        }
        else
        {
            alert("亲，账号不能为空哦~");
            document.getElementById("username").focus(); //光标占位
            return false;
        }
    }
</script>
</body>
</html>
