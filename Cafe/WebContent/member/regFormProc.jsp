<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="dao" class="my.member.MemberDao" />
<jsp:useBean id="vo" class="my.member.MemberVo" />
<jsp:setProperty property="*" name="vo" />

<%
 int rst = 0;
 request.setCharacterEncoding("euc-kr");
 rst = dao.insertMember(vo);
 if(rst > 0){
%>
<script type="text/javascript">
location.href="regSuccess.jsp";
</script>
<%}else{ %>
<script type="text/javascript">
alert("ȸ������ ����");
history.go(-1);
</script>
<%} %>




