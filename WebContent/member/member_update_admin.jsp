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
	/* $(function() {
		var password1 = $("input[name='m_password2']");
		var test = $("input[0]").focus(function() {
			alert("zz");
		});
	}); */

	$(function() {
		$("#alert-wrong").hide();
		$("#alert-success").hide();
		$("input").keyup(function() {
			var grade = $("#grade").val();
			if (grade == 'a' || grade == 'c') {
				$("#alert-wrong").hide();
				$("#alert-success").show();
				$("#submit").removeAttr("disabled");
			} else {
				$("#alert-wrong").show();
				$("#alert-success").hide();
			}
		})
	});

	$(function() {
		$("#btn").click(function() {
			var result = confirm("���� ������ ����Ͻðڽ��ϱ�?");
			if (result) {
				location.replace("list.do");
			} else {

			}
		});
	});
<%%>
	
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

td {
	width: 384px;
}
</style>
</head>
<body>

	<h1>ȸ�� ���� ����</h1>

	<form action="update_admin.do" method="post">
		<table>
			<tr>
				<td>ȸ�� ���̵�</td>
				<td><input name="id" value="${dto.m_id }" readonly></td>
			</tr>
			<tr>
				<td>ȸ�� ���</td>
				<td><input id="grade" name="grade" value="${dto.m_grade }"
					required></td>
			</tr>
			<tr id="check_grade">
				<td class="alert alert-danger" id="alert-wrong"
					style="padding: 1px; border: none;">�߸��� ȸ������Դϴ�.</td>
				<td class="alert alert-success" id="alert-success"
					style="padding: 1px; border: none;">��ȿ�� ȸ������Դϴ�.</td>
			</tr>
		</table>
		<input id="submit" type="submit" value="����"
			onclick="javascript:alert('���������� ����Ǿ����ϴ�.')" disabled /> <input
			id="btn" type="button" value="���">
	</form>

</body>
</html>