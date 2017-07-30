<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/23
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setAttribute("name","小倩xiao");%>

<%--<%= request.getAttribute("name") %>--%>
<jsp:forward page="getRequestContext.jsp"/>