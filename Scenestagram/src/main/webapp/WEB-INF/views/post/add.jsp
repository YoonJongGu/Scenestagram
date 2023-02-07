<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<form method="POST" enctype="multipart/form-data">
	<p><input type="text" name="users_idx" value="1" readonly></p>
	<p><textarea name="content"></textarea></p>
	<p><input type="text" name="location" placeholder="지역 추가"></p>
	<p><input type="file" name="image_file" multiple required></p>
	<p><input type="submit" value="글작성"></p>
</form>

</body>
</html>