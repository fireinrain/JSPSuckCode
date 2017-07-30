<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/22
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% Cookie cookie = new Cookie("name","liuzhaoyang");
    cookie.setMaxAge(24*60*60);
    cookie.setPath("127.0.0.1");
    response.addCookie(cookie);


%>
<a href="/getCookie.jsp">带着cookie请求页面</a>
