<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="my.member.MemberDao"%>
<%@ page session="true" %>
<%
     int rst = 0;
     MemberDao dao = new MemberDao();
     request.setCharacterEncoding("euc-kr");
     String id = (String)request.getParameter("id");
     String pass = (String)request.getParameter("pass");
     rst = dao.loginCheck(id, pass);
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>loginPro.jsp</title>
</head>
<body>

	<%
	 if(rst == 2){
	 	session.setAttribute("loginId", id);
		session.setMaxInactiveInterval(60*60);
	%>
	<script type="text/javascript">
		location.href="../index.jsp";
	</script>
	
	<%  }else if(rst == 1){ %>
	<script type="text/javascript">
		alert("��й�ȣ Ʋ�Ƚ��ϴ�");
		history.go(-1);
	</script>
	
	<%  }else{ %>
	<script type="text/javascript">
		alert("�������� ���� �����Դϴ�.");
		history.go(-1);
	</script>
	
	<%  } %>
</body>
</html>





