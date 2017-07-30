<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/23
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%--jstl java serve page standard tag library--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--格式化输出标签--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="name" value="${'gareen'}" scope="request" />
<%--相当于在request里面设置了键值对--%>

<c:out value="${name}"/>

<%--相当于在request里面删除了键值对--%>
<c:remove var="name" scope="request"/>

<%--再次输出--%>
<c:out value="${name}"/>

<%
    pageContext.setAttribute("weapon","大宝剑");
    pageContext.setAttribute("lastword","");

    List<String> item = new ArrayList <>();
    item.add("草鞋");
    item.add("宝剑");
    item.add("核弹");

    pageContext.setAttribute("items",item);


%>

<c:if test = "${empty lastword}">
    <p>没有遗言</p>
</c:if>

<%--提供else的功能--%>
<c:if test = "${!weapon}">
    <p>有武器</p>
</c:if>

<c:choose>
    <c:when test="${empty items}">
        <p>没有装备</p>
    </c:when>
    <c:otherwise>
        <p>有装备</p>
    </c:otherwise>

</c:choose>


<%--foreach循环--%>
<table width="600" align="center" border="1" cellspacing="2">
    <tr>
        <td>编号</td>
        <td>装备</td>
    </tr>
    <c:forEach items="${items}" var="item" varStatus="items"    >
        <tr>
            <td><c:out value="${items.count}"/></td>
            <td><c:out value="${item}"/></td>
        </tr>
    </c:forEach>
</table>

<c:set var="heros" value="塔姆,艾克;巴德|雷克赛!卡莉丝塔" />

<c:forTokens items="${heros}" delims=":;|!" var="hero">
    <c:out value="${hero}" /> <br />
</c:forTokens>

<%--格式化--%>
<%
    Date now = new Date();
    pageContext.setAttribute("now",now);
%>

完整日期: <fmt:formatDate value="${now}" pattern="G yyyy年MM月dd日 E"/><br>
完整时间: <fmt:formatDate value="${now}" pattern="a HH:mm:ss.S z"/><br>
常见格式: <fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss"/>
