<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>

<head>
	<title>Insert title here</title>
	<meta charset="EUC-KR"> <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
<h1>�� ��ġ��</h1>
<form action="update.do" method="post">
	�۹�ȣ : <input name="num" value="${dto.b_num }" readonly="readonly"><br>
	�ۼ��� : <input name="author" value="${dto.m_id }" readonly="readonly"><br>
	�ۼ��� : <input name="writeDay" value="${dto.b_day }" readonly="readonly"><br>
	���� : <input name="title" value="${dto.b_title }"><br>
	���� :<br>
	<textarea name="content"  rows="5">${dto.b_content }</textarea>
	<input type="submit" value="����">
</form>
</body>

</html>