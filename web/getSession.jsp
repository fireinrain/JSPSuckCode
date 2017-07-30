<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/23
  Time: 5:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% String name = (String)request.getSession().getAttribute("name"); %>

session中的name对应的值：<%= name %>