<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Scenestagram</title>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style.css">

<style>
/*������� �⺻ ���� �е�, ����¡ �ʱ�ȭ*/
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  text-decoration: none;
  list-style: none;
  outline: none;
}

/*�������� �߾��� ����� �����̳�*/
.container {
  width: 100%;
  min-height: 100%;
}

/*�����±� �⺻����*/
.loginMain {
  height: 100vh;
  display: flex;
  justify-content: center;
  background-color: rgba(var(--b3f, 250, 250, 250), 1);
}

/*��� ��ư�� ������*/
button {
  cursor: pointer;
}

/*�α��� ����*/
.login {
  width: 100%;
  max-width: 935px;
  display: flex;
  justify-content: center;
  align-items: center;
}

/*�α������� �����ϱ⸦ ���δ� �����̳�*/
.login__form__container {
  width: 350px;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

/*�α�����, �����ϱ� �ڽ� ������*/
.login__form,
.login__register {
  padding: 10px 0 20px;
  text-align: center;
  border: 1px solid rgba(var(--b6a, 219, 219, 219), 1);
  background-color: #fff;
}

/*�ΰ��̹����� ���� ���Ͽ��*/
.login__form h1 {
  height: 86px;
  display: flex;
  align-items: center;
  justify-content: center;
}

/*�ΰ� �̹���*/
.login__form h1 img {
  height: 80px;
  width: 250px;
}

/*�α��� ��ǲ�ڽ�*/
.login__input {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-top: 24px;
  padding: 0 40px;
}

/*�α��� ��ǲ�±�*/
.login__input input {
  width: 100%;
  height: 38px;
  padding: 9px 0 7px 8px;
  border: 1px solid rgba(var(--ca6, 219, 219, 219), 1);
  border-radius: 3px;
  margin-bottom: 6px;
}

/*�α��� ��ư*/
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

/* login__horizon ������ �׳� hr�� �������Ѱ�. */
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

/* ���̽��Ϸα��� ���� */
.login__facebook {
  padding: 0 40px;
  margin-top: 15px;
}
/*���̽��� �α��� ��ư*/
.login__facebook button {
  background-color: #0095F6;
  width: 100%;
  height: 30px;
  border: 0;
  font-weight: 600;
  font-size: 15px;
}
/*���̽��� �α��� ����*/
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
/*������������ �̵�*/
.login__register {
  margin-top: 10px;
  line-height: 60px;
  padding: 0;
}

/*������ �����Ű���?*/
.login__register span {
	color:black;
  font-size: 14px;
  font-weight: 200;
}

/*���������� �̵���ư*/
.login__register a {
  color: #0095f6;
}

/* ��ư������ */
.cta {
  margin-right: 10px;
  padding: 5px 9px;
  border: 1px solid rgba(var(--ca6, 219, 219, 219), 1);
  border-radius: 4px;
  color: #262626;
  font-weight: bold;
  background: transparent;
}

/*��ư ����*/
.cta.blue {
  background: #0095f6 !important;
  color: #fff !important;
}

/* ȸ������������ �ΰ���Ʈ */
.logo_ment{
	color: #8e8e8e;
}

/* ���̵� üũ ���� */
.id_ok{
color:#008000;
display: none;
}

.id_already{
color:#6A82FB; 
display: none;
}

/* ����� */
.hidden{
	display: none;
}
/* ȸ������ �̸��� */
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

