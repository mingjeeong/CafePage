<%@ page language="java" contentType="text/html; charset=EUC-KR"pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="dao" class="my.member.MemberDao"/>
<jsp:useBean id="vo" class="my.member.MemberVo"/>
<jsp:setProperty property="*" name="vo"/>

<%
  	String id = null;
 	id = dao.findid(vo);
 	
%>

<%	if(id == null){ 
%>

<script type="text/javascript">

	alert("존재하지 않은 계정입니다");
	history.go(-1);
</script>

<%	}else{
%>

<script type="text/javascript">
	alert("찾으시는 계정은 <%=id%>입니다.");
	location.href="../index.jsp";
</script>

<%	}
%>


