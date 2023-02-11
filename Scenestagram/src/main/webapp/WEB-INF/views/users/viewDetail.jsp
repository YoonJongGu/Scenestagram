<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

${dto.nick_name }

<!-- dto.idx 같이 보내주기 -->
<a href="${cpath }/users/follow/${dto.idx}/${login.idx}"><button>팔로우</button></a>
<a href="${cpath }/users/unfollow/${dto.idx}/${login.idx}"><button>언팔로우</button></a>

<a href="#"><button>메시지 보내기</button></a>

<br><br>

<span>게시물</span>
<span>팔로워</span>
<span>팔로우</span>

<div>${dto.name }</div>
<div>${dto.introduce }</div>

</body>
</html>