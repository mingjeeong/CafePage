<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 

Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript">
	function loginchk(){
		 var regx = /^[a-zA-Z0-9]*$/;
		 var id = document.form.id.value;
		 var pass = document.form.pass.value;
		 
		 if (id.length == 0 || id == null) {
			  alert("���̵� �Է��Ͻÿ�");
			  document.form.id.focus();
			  return false;
		 }
		 if (!regx.test(id)){
			  alert("���̵�� ����, ���ڸ� �Է°����մϴ�.");
			  document.form.id.focus();
			  return false;
		 }
		 if (pass.length < 6 || pass == null) {
			  alert("��й�ȣ�� 6�����̻��Դϴ�^^");
			  document.form.pass.focus();
			  return false;
		}
		 document.form.submit();
		}


</script>
<style type="text/css">
b {
	font-size: 13px;
	font-family: ����;
	color: #6799FF;
}

.inputid {
	font-size: 13px;
	width: 80px;
	height: 15px;
	border-color: green;
	border-width: 5px;
}

.inputpass {
	font-size: 13px;
	width: 120px;
	height: 15px;
	border-color: green;
	border-width: 5px;
}
</style>
<title>�α��� â</title>
</head>
<body>
	<form action="log/loginProc.jsp" name="form" method="post">
	<table width="100%" border="1">
		<tr>
			<td align="right" width="65%">
				<img src="log/image/img_puppy.png" width="400" height="90" border="0" align="middle">&nbsp;&nbsp;&nbsp;&nbsp; 
				<a href="index.jsp"><img src="log/image/itbanklogo.png" width="290" height="100" border="0" align="middle"></a>
			</td>
			<td align="right" width="35%" valign="middle">
				<b>���̵� : </b><input type="text" size="10" maxlength="15" name="id" class="inputid">&nbsp;
				<b>��й�ȣ : </b><input type="password" size="10" maxlength="15" name="pass" class="inputpass"> 
				<img src="log/image/loginbutton.png" width="60" height="30" align="middle" onclick="loginchk()" border="0"><br><br>
				<a href="Findidready.jsp"><b>���̵� ã�� </b></a> | 
				<a href="Findpassready.jsp"><b>��й�ȣ ã��</b></a> |&nbsp; 
				<a href="member/regFormImpl.jsp"> <b>ȸ������</b></a>
			</td>
		</tr>
	</table>
	</form>


</body>
</html>



