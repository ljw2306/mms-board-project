<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MemberDelete</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- 	<script type="text/javascript">
		$(document).ready(function(){
			$("#iddea").click(function(event) {
				event.preventDefault();
				
				var pw = prompt("��й�ȣ�� �Է��ϼ���");
				location.assign("delete.do?password="+pw);
				
			});
		});
	</script> -->
</head>
<script type="text/javascript">
	//$(function() {
		
		//$("#test").submit(function(event){
			//event.preventDefault();
			//var submit = confirm("���� ���� �Ͻðڽ��ϱ�?");
			//if (submit) {
				/* var pw = $("input[name='password']").val();
				location.replace("delete.do?pw="+pw); */
				//$("#test").submit('submit',true);
			//} else {
				//location.replace("deleteui.do");
			//}
		//})
	//});
</script>
<body>
	<h1>ȸ���� Ż���Ͻø� Ȱ���Ͻ� ��� ������ �����˴ϴ�.</h1>

	<form action="delete.do" method="post" id="test">
		��й�ȣ:<input type="password" name="password">
		<input type="submit" value="����">
	</form>
	<c:if test="${not empty msg}">
		<h1>${msg}</h1>
	</c:if>



</body>
</html>