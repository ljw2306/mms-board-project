<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${not empty sessionScope.dto }">
	<c:set value="${sessionScope.dto.m_id }" var="id" />
	<c:set value="${sessionScope.dto.m_grade}" var="grade"/>
</c:if>
<c:choose>
	<c:when test="${not empty id }">
	<h1>${id }�� ȯ���մϴ�.</h1> 
	<br>
		<a href="member/logout.do">�α׾ƿ�</a>
		<c:choose>
			<c:when test="${grade eq 97}">
				<a href="board/createui.do">�۾���</a>
				<a href="member/read.do">������</a>
			</c:when> 
			<c:otherwise>
				<a href="member/list.do">ȸ������Ʈ</a>
				<a>��������</a>
			</c:otherwise>
		</c:choose>

	</c:when>
	<c:otherwise>
		<a href="member/loginui.do">�α���</a>
		
	</c:otherwise>
</c:choose>
	<a href="board/list.do?flag=true">�۸��</a>