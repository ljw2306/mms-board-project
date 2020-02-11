<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>

<head>
<title>Member List</title>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/member/list.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/member/list.js" charset="UTF-8"></script>  
</head>
<body> 
<br>
	<a href="../" class="btn btn-primary">Home</a>
	<hr>
	<h1 style="text-align: center;">������������</h1>
	<hr>
	<div class="container">
		<div class="form-group row">
			<div class="col-xs-5">
				<select id="category" style="font-size: 17px;" name="category">
					<option value="0">��޺�	</option>
					<option value="1">���̵�	</option>
					<option value="2">�̸�	</option>
					<option value="3">�г���	</option>
					<option value="4">��ȭ��ȣ	</option>
					<option value="5">�̸���	</option>
				</select>
			</div>
			<div class="col-xs-5">
				<input class="form-control" type="text" name="content"/>
			</div>
			<div class="col-xs-2">
				<button class="btn btn-primary" id="searchList">�˻�</button>
			</div>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>���̵�	</th>
					<th>�̸�		</th>
					<th>�������	</th>
					<th>����		</th>
					<th>��ȭ��ȣ	</th>
					<th>�̸���	</th>
					<th>�г���	</th>
					<th>���		</th>
				</tr>
			</thead>
			
			<tbody id="ajaxTable"/>
			
		</table>
	</div>
	<div id="paging"></div>
	<div id="totalList"></div>
</body>
</html>