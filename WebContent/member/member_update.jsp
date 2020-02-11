<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MemberUpdate</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">

	$(function() {
		$("#alert-success").hide();
		$("#alert-wrong").hide();
		$("input").keyup(function() {
			var pwd1 = $("#pwd1").val();
			var pwd2 = $("#pwd2").val();
			if (pwd1 != "" || pwd2 != "") {
				if (pwd1 == pwd2) {
					$("#alert-success").show();
					$("#alert-wrong").hide();
					$("#submit").removeAttr("disabled");
				} else {
					$("#alert-success").hide();
					$("#alert-wrong").show();
				}
			}
		});
	});
	
	$(function(){
		$("#btn").click(function(){
			var result = confirm("���� ������ ����Ͻðڽ��ϱ�?");
			if (result) {
				location.replace("read.do");
			}else{
				
			}
		});
	});
</script>
<style type="text/css">
form {
	margin: auto;
	text-align: center;
}

table {
	margin: auto;
	text-align: center;
	margin: 10px auto 10px;
}

h1 {
	margin: auto;
	text-align: center;
}

</style>
</head>
<body>

	<h1>ȸ�� ���� ����</h1>

	<form action="update.do" method="post">
		<table>
			<tr>
				<td>���̵�</td>
				<td><input name="id" value="${dto.m_id }" readonly></td>
			</tr>
			<tr>
				<td>������ ��й�ȣ</td>
				<td><input name="password" type="password" id="pwd1"></td>
			</tr>
			<tr>
				<td>��й�ȣ ���Է�</td>
				<td><input name="password2" type="password"	id="pwd2"></td>
			</tr>
			<tr id="checkpwd" >
				<td colspan="3"><span class="alert alert-success" id="alert-success" style="padding: 1px; border: none;">��й�ȣ�� ��ġ�մϴ�.</span>
				<span class="alert alert-danger" id="alert-wrong" style="padding: 1px; border: none;">��й�ȣ�� ��ġ���� �ʽ��ϴ�.</span></td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td><input name="name" value="${dto.m_name }"></td>
			</tr>
			<tr>
				<td>�������</td>
				<td><input name="birth" value="${dto.m_birth }" readonly></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input name="age" value="${dto.m_age }" type="number"
					readonly></td>
			</tr>
			<tr>
				<td>��ȭ��ȣ</td>
				<td><input name="phone" value="${dto.m_phone }" required></td>
			</tr>
			<tr>
				<td>�̸���</td>
				<td><input name="email" value="${dto.m_email }" required></td>
			</tr>
			<tr>
				<td>�г���</td>
				<td><input name="nickname" value="${dto.m_nickname }" required></td>
			</tr>
			<tr>
				<td>ȸ�� ���</td>
				<td><input name="grade" value="${dto.m_grade }" readonly></td>
			</tr>
		</table>
		<input id="submit" type="submit" value="����" onclick="javascript:alert('���������� ����Ǿ����ϴ�.')" disabled/> 
		<input id="btn"	type="button" value="���">
	</form>

</body>
</html>