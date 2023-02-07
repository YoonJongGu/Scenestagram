<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<h1>infoModify</h1>
<hr>

<form action="${cpath }/users/infoModify" method="POST">
	<input type="hidden" name="idx" value="${login.idx }">
	<p>
		<input type="text" name="email" value="${login.email }">
	</p>
	<p>
		<input type="radio" name="gender" value="남성"
			${login.gender == '남성' ? 'checked' : '' }> <label>남성</label>
	</p>
	<p>
		<input type="radio" name="gender" value="여성"
			${login.gender != '남성' ? 'checked' : '' }> <label>여성</label>
	</p>
	<p>
		<input type="date" name="birth" value="${login.birth }">
	</p>
	<input type="submit" value="수정하기">
</form>


</body>
</html>