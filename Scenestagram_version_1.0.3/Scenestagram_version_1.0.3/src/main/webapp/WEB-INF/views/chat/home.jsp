<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<form method="POST" action="${cpath }/chat/join">
	<div>
		<input type="text" name="username" required autofocus>
		<input type="submit" value="입장">
	</div>
</form>

</body>
</html>