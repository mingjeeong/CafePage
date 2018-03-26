<%@ page language="java" contentType="text/html; charset=EUC-KR"
 pageEncoding="EUC-KR"%>
 <%
 String top = (String)request.getAttribute("top");
 String left = (String)request.getAttribute("left");
 String right = (String)request.getAttribute("right");
 String bottom = (String)request.getAttribute("bottom");
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01

 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>안녕하세요 아이티뱅크입니다.^^</title>
</head>
<body>
<table width="1200" height="650">
  <tr>
   <td colspan="3" width="100%" height="15%">
    <jsp:include page="<%=top %>"/>
   </td>
  </tr>
  <tr>
   <td width="15%">
   </td>
   <td width="20%" height="70%">
   <jsp:include page="<%=left%>"/>
   </td>
   <td width="65%" height="70%">
   <jsp:include page="<%=right%>"/>
   </td>
  </tr>
  <tr>
   <td colspan="3" width="100%" height="15%">
   <jsp:include page="<%=bottom %>"/>
   
   </td>
  </tr>
 </table>
</body>
</html>


