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
                        
                        <h3>비밀번호를 찾으실 건가요?</h3>
                        
                        <div>
                        	이메일주소를 입력 하시면 이메일주소로<br>
                        	인증 코드를 보내드립니다.
                        </div>
                        
                        <!--이메일 인풋-->
                        <form class="login__input" method="GET" id="emailInput">
                            <input type="text" id="id" name="email" placeholder="이메일을 입력하세요" required="required" />
                            <input type="submit" value="인증 번호 발송">
                        </form>
                        <!--이메일 인풋 end-->
						
                       <form class="login__input hidden" id="check">
                            <input type="text" name="authNumber" placeholder="인증번호를 입력하세요" required="required" />
                            <input type="submit" value="인증">
                        </form>                       
                        
                        <div class="showPw hidden" id="result">
                        	<div class="userEmail"></div>계정의 비밀번호는<br>
                        	<div class="userPw"></div>입니다.
                        </div>
                        
                        <div class="next hidden" >
                        	<a href="${cpath }/users/login">로그인페이지 이동</a>
                        </div>
                        
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

<!-- 이메일 보내기 -->
<script>

	const sendForm = document.forms[0]
	const check = document.getElementById('check')
	const emailInput = document.getElementById('emailInput')
	sendForm.onsubmit = function(event){
		event.preventDefault()
		const email = document.querySelector('input[name="email"]').value
		const url = '${cpath}/sendAuthNumber'
		
		fetch(url + '?email=' +email)
		.then(resp => resp.text())
		.then(text=>{
			if(text == 1){
				emailInput.classList.add('hidden')
				check.classList.remove('hidden')
				alert('인증번호가 발송되었습니다. 메일을 확인해주세요')
			}	
		})
		.catch(ex => {	
			console.log(ex)
		})
	}
</script>

<!-- 이메일 인증 -->
<script type="text/javascript">
	const userEmail = document.querySelector('.userEmail')
	const checkForm = document.forms[1]
	checkForm.onsubmit = function(event){
		event.preventDefault()


		const ob ={
	
		 	email : document.querySelector('input[name="email"]').value,
		 	
	 		authNumber : document.querySelector('input[name="authNumber"]').value,
	 		
		}
			
		const url ='${cpath}/sendAuthNumber'
		const opt = {
				method : 'POST',
				body: JSON.stringify(ob), // JSON형식의 문자열로 변환하여 전달
				headers : {
					'Content-Type':'application/json; charset=utf-8'
				}
		}
		fetch(url,opt)
		.then(resp => resp.text())
		.then(text=>{
			console.log(text)
			if(text == 1){
				alert('인증이 완료되었습니다')
				
			}
			else{
				alert('인증번호가 일치하지 않습니다. 다시 확인해주세요')
			}
		})
	}
</script>

</body>
</html>