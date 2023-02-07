<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
    <div class="container">
        <main class="loginMain">
        <!--로그인섹션-->
            <section class="login">
               <!--로그인박스-->
                <article class="login__form__container">
                   <!--로그인 폼-->
                   <div class="login__form">
                        <h1><img src="${cpath }/resources/img/loginlog.jpg" alt=""></h1>
                        
                        <div class="logo_ment">
                        	<h3>
                        	친구들의 사진과 동영상을 보려면<br>
                        	가입하세요.
                        	</h3>
                        </div>
                        
						<!-- Oauth 소셜로그인 -->
                        <div class="login__facebook">
                            <button onclick="javascript:location.href=''">
                                <i class="fab fa-facebook-square"></i>
                                <span>Facebook으로 로그인</span>
                            </button>
                        </div>
                        <!-- Oauth 소셜로그인end -->
                        
						<!-- 또는 -->
                        <div class="login__horizon">
                            <div class="br"></div>
                            <div class="or">또는</div>
                            <div class="br"></div>
                        </div>
                        <!-- 또는end -->
                        
                        <!--로그인 인풋-->
                        <form class="login__input"  action="${cpath }/users/join" method="POST">
                            <input type="text" id="id" name="email" placeholder="이메일 주소" required="required" oninput="checkId()"/>
                            <input type="text" name="phone_num" placeholder="휴대전화 (-없이)">
<!--                             <span class="id_ok">사용 가능한 아이디입니다.</span> -->
<!-- 							<span class="id_already">누군가 이 아이디를 사용하고 있어요.</span> -->
                            <input type="text" id="name" name="name" placeholder="성명" required="required" />
                            <div id="gender">
	                        <label><input type="radio" id="gender" name="gender" required="required" value="남성"/>남성</label>
                            <label><input type="radio" id="gender" name="gender" required="required" value="여성"/>여성</label>
                            </div>
                            <input type="text" id="nick_name" name="nick_name" placeholder="사용자 이름" required="required" />
                            <input type="password" id="pw" name="pw" placeholder="비밀번호" required="required" />
                            <button class="btn">가입</button>
                        </form>
                        <!--로그인 인풋end-->
                    </div>
                    
                    <!--계정이 있으신가요?-->
                    <div class="login__register">
                        <span>계정이 있으신가요?</span>
                        <a href="${cpath }/users/login">로그인</a>
                    </div>
                    <!--계정이 없으신가요?end-->
                </article>
            </section>
        </main>
    </div>
<!-- <script> -->
// 	function checkId(){
// 	    var id = document.querySelector('#id').value; //id값이 "id"인 입력란의 값을 저장
// 	    console.log(id)
// 	    const url = '${cpath}/idcheck/' + id
// 	    fetch(url)
// 	    .then(resp=>resp.text())
// 	    .then(text=>{
// 	    	console.log(text)
// 	        function idCheck(text){ //컨트롤러에서 넘어온 cnt값을 받는다 
// 	            if(text == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
// 	                document.querySelector('.id_ok').styleList.add("show"); 
// 	                document.querySelector('.id_already').styList.add("hidden");
// 	            } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
// 	            	document.querySelector('.id_already').styleList.add("show");
// 	            	document.querySelector('.id_ok').styleList.remove("hidden");
// 	                alert("아이디를 다시 입력해주세요");
// 	            }
// 	        }
	    	
// 	    })
// 	}
<!-- </script> -->

</body>
</html>