<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/22
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>

<%--//声明一个page--%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" %>
<%@ page import="javax.xml.crypto.Data" %>

<h2>你好，JSP</h2>
<br>

<%=new Date().toLocaleString() %>
<%--<%=  %>   相当于out.println--%>

<%="liuzhaoyang刘朝阳"%>

<% List<String> list = new ArrayList <>();
    list.add("today");
    list.add("is");
    list.add("a");
    list.add("great");
    list.add("day");

    long year = new Date().getTime();

%>

<table width="200px" align="center" border="1" cellspacing="0">
    <% for (String s:list
            ) {%>
    <tr>
        <td><%=s %></td>
    </tr>
    <%}%>

</table>


<%--通过指令引入--%>
<%@ include file="footer.jsp"%>

<%-- 通过动作引入--%>
<jsp:include page="footer.jsp">
    <jsp:param name="year" value="2018"/>
</jsp:include>


<%@ include file="footer2.jsp"%>

<%--客户端跳转--%>
<%--<% response.sendRedirect("jump.jsp"); %>--%>

<%--服务端跳转--%>
<jsp:forward page="footer.jsp"/>