<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<form action="${cpath }/users/profileModify" method="POST" enctype="multipart/form-data">
	<input type="hidden" name="idx" value="${login.idx }">
	<p>프로필 사진 :<input type="file" name="user_img_file"></p>
	<p>이름 : <input type="text" name="name" value="${login.name }"></p>
	<p>사용자 이름 : <input type="text" name="nick_name" value="${login.nick_name }"></p>
	<p>소개 : <textarea name="introduce">${login.introduce }</textarea></p>
	<p><input type="submit" value="프로필 수정"></p>
</form>
	<a href="${cpath }/users/infoModify"><button>회원정보 수정</button></a>

</body>
</html>