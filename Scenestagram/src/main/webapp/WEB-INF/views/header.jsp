<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/testStyle.css">

<style>
/*모든요소의 기본 마진 패딩, 사이징 초기화*/
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  text-decoration: none;
  list-style: none;
  outline: none;
}

/*페이지의 중앙을 잡아줄 컨테이너*/
.container {
  width: 100%;
  min-height: 100%;
}

/*메인태그 기본정의*/
.loginMain {
  height: 100vh;
  display: flex;
  justify-content: center;
  background-color: rgba(var(--b3f, 250, 250, 250), 1);
}

/*모든 버튼은 포인터*/
button {
  cursor: pointer;
}

/*로그인 섹션*/
.login {
  width: 100%;
  max-width: 935px;
  display: flex;
  justify-content: center;
  align-items: center;
}

/*로그인폼과 가입하기를 감싸는 컨테이너*/
.login__form__container {
  width: 350px;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

/*로그인폼, 가입하기 박스 디자인*/
.login__form,
.login__register {
  padding: 10px 0 20px;
  text-align: center;
  border: 1px solid rgba(var(--b6a, 219, 219, 219), 1);
  background-color: #fff;
}

/*로고이미지를 담을 블록요소*/
.login__form h1 {
  height: 86px;
  display: flex;
  align-items: center;
  justify-content: center;
}

/*로고 이미지*/
.login__form h1 img {
  height: 80px;
  width: 250px;
}

/*로그인 인풋박스*/
.login__input {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-top: 24px;
  padding: 0 40px;
}

/*로그인 인풋태그*/
.login__input input {
  width: 100%;
  height: 38px;
  padding: 9px 0 7px 8px;
  border: 1px solid rgba(var(--ca6, 219, 219, 219), 1);
  border-radius: 3px;
  margin-bottom: 6px;
}

/*로그인 버튼*/
.login__input button {
  border: 0;
  outline: 0;
  width: 100%;
  height: 30px;
  background-color: #bfdffd;
  color: #fff;
  margin-top: 15px;
  font-weight: 700;
  border-radius: 3px;
  transition: background 0.5s;
}

/* login__horizon 붙은건 그냥 hr을 디자인한거. */
.login__horizon {
  display: flex;
  margin-top: 20px;
  padding: 0 40px;
  align-items: center;
}

.login__horizon .br {
  width: 40%;
  height: 1px;
  border-top: 1px solid rgba(var(--b6a, 219, 219, 219), 1);
}

.login__horizon .or {
  width: 20%;
  text-align: center;
  color: #aaa;
  font-size: 14px;
}

/* 페이스북로그인 영역 */
.login__facebook {
  padding: 0 40px;
  margin-top: 15px;
}
/*페이스북 로그인 버튼*/
.login__facebook button {
  background-color: #0095F6;
  width: 100%;
  height: 30px;
  border: 0;
  font-weight: 600;
  font-size: 15px;
}
/*페이스북 로그인 색깔*/
.login__facebook button i,
span {
  color: #fff;
}
.id_ok{
color:#008000;
display: none;
}

.id_already{
color:#6A82FB; 
display: none;
}
/*가입페이지로 이동*/
.login__register {
  margin-top: 10px;
  line-height: 60px;
  padding: 0;
}

/*계정이 없으신가요?*/
.login__register span {
	color:black;
  font-size: 14px;
  font-weight: 200;
}

/*가입페이지 이동버튼*/
.login__register a {
  color: #0095f6;
}

/* 버튼디자인 */
.cta {
  margin-right: 10px;
  padding: 5px 9px;
  border: 1px solid rgba(var(--ca6, 219, 219, 219), 1);
  border-radius: 4px;
  color: #262626;
  font-weight: bold;
  background: transparent;
}

/*버튼 블루*/
.cta.blue {
  background: #0095f6 !important;
  color: #fff !important;
}

/* 회원가입페이지 로고맨트 */
.logo_ment{
	color: #8e8e8e;
}

/* 아이디 체크 문구 */
.id_ok{
color:#008000;
display: none;
}

.id_already{
color:#6A82FB; 
display: none;
}

/* 숨기기 */
.hidden{
	display: none;
}
/* 회원가입 이메일 */
.show{
	display: inline-block;
}
/* 회원가입 성별 div */
#gender{
	display: flex;
    justify-content: space-evenly;
    width: 100%;
    height: 38px;
    border: 1px solid rgba(var(--ca6, 219, 219, 219), 1);
    border-radius: 3px;
    margin-bottom: 6px;
}

/* 성별 선택 */
select[name="gender"]{
    width: 100%;
    height: 38px;
    padding: 9px 0 7px 8px;
    border: 1px solid rgba(var(--ca6, 219, 219, 219), 1);
    border-radius: 3px;
    margin-bottom: 6px;
}

/* err문구 div */
.login__input > div{
	color: red;
	font-size: 12px;
	margin-right: auto	
}

</style>
</head>
<body>

