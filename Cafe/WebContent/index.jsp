<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	String loginId = (String)session.getAttribute("loginId");

	if(loginId == null){
	 	request.setAttribute("top", "/log/loginForm.jsp");
	}else{
	 	request.setAttribute("top", "/log/logoutForm.jsp");
	}

	if(request.getAttribute("left") == null){
			request.setAttribute("left", "/left.jsp");
		}
	if(request.getAttribute("right") == null){
			request.setAttribute("right", "/right.jsp");
		}


	request.setAttribute("bottom", "/bottom.jsp");
%>
<jsp:forward page="/template.jsp"/>

    