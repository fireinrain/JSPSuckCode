<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/23
  Time: 5:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Cookie[] cookies = request.getCookies();
if (cookies!= null){
    for (Cookie c:cookies
         ) {
        out.println(c.getName()+"-----"+c.getValue()+"<br/>");
    }
}




    %>
