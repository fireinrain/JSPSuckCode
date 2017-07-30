<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/23
  Time: 5:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  import="javax.servlet.http.Cookie" %>

<% session.setAttribute("name","xiaoqian刘朝阳"); %>

<%--<a href="getSession.jsp">跳转到获取session的页面</a>--%>

<%--如果没有开启cookie--%>
<a href="<%= response.encodeURL("getSession.jsp")%>">跳转到获取session的页面</a>