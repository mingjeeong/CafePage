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

	alert("�������� ���� �����Դϴ�");
	history.go(-1);
</script>

<%	}else{
%>

<script type="text/javascript">
	alert("ã���ô� ������ <%=id%>�Դϴ�.");
	location.href="../index.jsp";
</script>

<%	}
%>


