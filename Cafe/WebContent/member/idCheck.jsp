<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="dao" class="my.member.MemberDao" />
<%
	int rst = 0;
	String id = (String) request.getParameter("id");
	rst = dao.idCheck(id);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>아이디 중복 확인</title>
</head>
<body>
	<%
		if (rst == 1) {
	%>
	
	<span>이미 사용중인 아이디입니다.</span>
	<!-- 아이디가 이미 존재할때 이미지 -->
	<%
		} else {
	%>
	<span>사용가능한 아이디 입니다.</span>
	<!-- 아이디가 존재하지 않을 때 이미지 -->
	<%
		}
	%>
</body>
</html>


