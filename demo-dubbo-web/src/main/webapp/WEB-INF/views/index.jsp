<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>demo 主页</title>
</head>
<body>
你好，主页
<h1>
<a href="index/test.html">test</a>
<br>
<%   
  //HttpSession session = request.getSession(true);
out.println(session.getServletContext().getRealPath(""));
  System.out.println(session.getId());   
  out.println("<br> SESSION ID:" + session.getId()+"<br>");     
  // 如果有新的请求，则添加session属性   
  String name = request.getParameter("name");
  if (name != null && name.length() > 0) {   
     String value = request.getParameter("value");   
     session.setAttribute(name, value);   
  }     
    out.print("<b>Session List:</b>");     
    Enumeration<String> names = session.getAttributeNames();   
    while (names.hasMoreElements()) {   
        String sname = names.nextElement();    
        String value = session.getAttribute(sname).toString();   
        out.println( sname + " = " + value+"<br>");   
        System.out.println( sname + " = " + value);   
   }   
%>
</h1>
</body>
</html>