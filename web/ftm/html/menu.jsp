<%--
  Created by IntelliJ IDEA.
  User: r
  Date: 2018/10/8
  Time: 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>菜单</title>
</head>
<body>

<%
    //初始化常量信息
    String userName = "非法用户";

    if (session.getAttribute("userName") != null) {
        userName = (String) session.getAttribute("userName");
    } else {

        response.sendRedirect("../biggerdvd.jsp");
        return;
    }



%>


<h1>********** <%=userName%>，你好！欢迎进入系统菜单 **************</h1>

<section>
    <button onclick="window.location.href='menu/display.html'">显示DVD</button>
    <button>查看DVD</button>
    <button>借出DVD</button>
    <button>归还DVD</button>
</section>

<section style="margin-top: 2%">
    <button>添加DVD</button>
    <button>修改DVD</button>
    <button>删除DVD</button>
</section>

<section style="margin-top: 2%">
    <button onclick="logout()">注销</button>
</section>

<script>
    function logout() {
        window.location.href = '../LogOutServlet.do';
    }



</script>

</body>
</html>
