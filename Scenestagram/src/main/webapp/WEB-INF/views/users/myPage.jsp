<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

${login.name }

<a href="${cpath }/users/logout"><button>로그아웃</button></a>
<a href="${cpath }/users/profileModify"><button>프로필수정</button></a>
</body>
</html>