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
                      
                        <!--이메일 인풋-->
                        <form class="login__input" method="GET" id="emailInput">
                        	<h3>비밀번호를 찾으실 건가요?</h3>
	                        <div>
	                        	<br>
	                        	이메일주소를 입력 하시면 이메일주소로
	                        	인증 코드를 보내드립니다.
	                        </div>
	                        <input type="text" name="ph_number" placeholder="전화번호입력 (-없이)" required>
                            <input type="text" id="id" name="email" placeholder="이메일을 입력하세요" required/>
                            <input type="submit" value="인증 번호 발송">
                        </form>
                        <!--이메일 인풋 end-->
                        
                        <!-- 이메일 인증 코드 인풋 -->
                       <form class="login__input hidden" id="check">
                       		<h3>이메일 인증</h3>
                       		<br>
							<div>
								발송받은 이메일에 
								인증코드를 입력해주세요.
							</div>
							<br>
                            <input type="text" name="authNumber" placeholder="인증번호를 입력하세요" required/>
                            <input type="submit" value="인증">
                        </form>     
                        <!-- 이메일 인증 코드 인풋 end -->                  
                        
                        <!--  인증후 변경할 비번 입력 -->
						<form class="login__input hidden" id="replacePw" action="${cpath }/users/replacePw">
							<div class="pw_tip_main"><h3>보안 수준이 높은 비밀번호 만들기</h3></div>
							<div class="pw_tip_sub">
								비밀번호는 6자 이상이어야 하고 숫자,<br>
								영문,특수기호( ! $ @ % )의  <br>
								조합을 포함해야 합니다.
							</div>
							<input type="hidden" name="phone_number" value="">
							<input type="password" name="pw_sub" placeholder="새 비밀번호 입력" required>
							<input type="password" name="pw" placeholder="새 비밀번호  다시 입력" required>
							<input type="submit" value="비밀번호 재설정">
						</form>
						<!--  인증후 변경할 비번 입력 -->
                        
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
<!-- 비밀번호 입력시 히든에 추가 코드 -->
<script>
	const ph_num = document.querySelector('input[name="ph_number"]')
	
	ph_num.onkeyup = function(event){
		const phone_number = document.querySelector('input[name="phone_number"]')
		phone_number.value = event.target.value
	}
	
</script>
<!-- 비밀번호 입력시 히든에 추가 코드 end-->

<!-- 이메일 보내기 -->
<script>

	const sendForm = document.forms[0]
	sendForm.onsubmit = function(event){
		event.preventDefault()
		const email = document.querySelector('input[name="email"]').value
		const url = '${cpath}/sendAuthNumber'
		let phone_number = ''
		
		fetch(url + '?email=' +email)
		.then(resp => resp.text())
		.then(text=>{
			if(text == 1){
				document.getElementById('emailInput').classList.add('hidden')
				document.getElementById('check').classList.remove('hidden')
				phone_number += document.querySelector('input[name="ph_number"]').value
				console.log(phone_number)
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
				document.getElementById('check').classList.add('hidden')
				document.getElementById('replacePw').classList.remove('hidden')
			}
			else{
				alert('인증번호가 일치하지 않습니다. 다시 확인해주세요')
			}
		})
	}
</script>

</body>
</html>