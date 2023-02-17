﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
    <div class="container">
        <main class="loginMain">
        <!--로그인섹션-->
            <section class="login">
               <!--로그인박스-->
                <article class="login__form__container">
                   <!--로그인 폼-->
                   <div class="login__form">
                        <h1><img src="${cpath }/resources/img/loginlog.jpg" alt=""></h1>
                        
                        <!--로그인 인풋-->
                        <form class="login__input"  action="${cpath }/users/login" method="POST">
                            <input type="text" id="id" value="${empty inputPhoneNumber ? '' : inputPhoneNumber }" name="phone_number" placeholder="전화번호 입력 (-제외)" required="required" />
                            <input type="password" id="pw" name="pw" placeholder="password" required="required" />
                            <div id="login_err">${msg == false ? '전화번호 또는 비밀번호를 잘못 입력했습니다. 입력하신 내용을 다시 확인해주세요.' : '' }</div>
                            <button class="btn">로그인</button>
                            
                        </form>
                        <!--로그인 인풋end-->
                        <div>
                        	<a href="${cpath }/users/findPw">비밀번호를 잊으셨나요?</a>
                        </div>
                        <!-- 또는 -->
                        <div class="login__horizon">
                            <div class="br"></div>
                            <div class="or">또는</div>
                            <div class="br"></div>
                        </div>
                        <!-- 또는end -->
                        
                        <!-- Oauth 소셜로그인 -->
                        <div class="login__facebook">
                            <button onclick="javascript:location.href=''">
                                <i class="fab fa-facebook-square"></i>
                                <span>Facebook으로 로그인</span>
                            </button>
                        </div>
                        <!-- Oauth 소셜로그인end -->
                    </div>
                    
                    <!--계정이 없으신가요?-->
                    <div class="login__register">
                        <span>계정이 없으신가요?</span>
                        <a href="${cpath }/users/join">가입하기</a>
                    </div>
                    <!--계정이 없으신가요?end-->
                </article>
            </section>
        </main>
        
    </div>

<!-- 아이디와 비번입력시에만 로그인버튼 색갈표시 -->
<script>
	const inputPhoneNumber = document.querySelector("#id");
	const inputPassword = document.querySelector("#pw");
	const button = document.querySelector(".btn");

	function loginBtn() {
		let idValue = inputPhoneNumber.value;
		let passwordValue = inputPassword.value;

		if (idValue.length > 0 && passwordValue.length > 0) {
			button.disabled = false;
			button.style.cursor = "pointer";
			button.style.backgroundColor = "#1c7ed6";
		} else {
			button.disabled = true;
			button.style.cursor = "default";
			button.style.backgroundColor = "#bfdffd";
		}
	};

	inputPhoneNumber.addEventListener('keyup', loginBtn);
	inputPassword.addEventListener('keyup', loginBtn);
</script>

</body>
</html>