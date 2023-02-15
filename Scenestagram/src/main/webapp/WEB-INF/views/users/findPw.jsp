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
	                        <div id="findPw_tip">
	                        	<br>
	                        	이메일주소를 입력 하시면 이메일주소로
	                        	인증 코드를 보내드립니다.
	                        </div>
	                        <input type="text" id="phnum" name="phone_number" placeholder="전화번호입력 (-없이)" required>
                            <input type="text" id="email" name="email" placeholder="이메일을 입력하세요" required/>
                            <input class="btn_findPw_style" type="submit" value="인증 번호 발송">
                        </form>
                        <!--이메일 인풋 end-->
                        
                        <!-- 이메일 인증 코드 인풋 -->
                       <form class="login__input hidden" id="check">
                       		<h3>이메일 인증</h3>
                       		<br>
							<div id="email_tip">
								발송받은 이메일에 
								인증코드를 입력해주세요.
							</div>
							<br>
                            <input type="text" name="authNumber" placeholder="인증번호를 입력하세요" required/>
                            <input class="btn_findPw_style" type="submit" value="인증">
                        </form>     
                        <!-- 이메일 인증 코드 인풋 end -->                  
                        
                        <!--  인증후 변경할 비번 입력 -->
						<form class="login__input hidden" id="replacePw" action="${cpath }/users/replacePw">
							<div id="pw_tip_main"><h3>보안 수준이 높은 비밀번호 만들기</h3></div>
							<div id="pw_tip_sub">
								비밀번호는 6자 이상이어야 하고 숫자,영문,특수기호( ! $ @ % )의 조합을 포함해야 합니다.
							</div>
							<input type="hidden" id="phoneNumber" name="phone_number" value="">
							<input type="password" name="pw_sub" placeholder="새 비밀번호 입력" required>
							<div class="pw_sub_err"></div>
							<input type="password" name="pw" placeholder="새 비밀번호  다시 입력" required>
							<div class="pw_err"></div>
							<input class="btn_findPw_style" type="submit" value="비밀번호 재설정" onclick="return allCheck()">
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
    
<!-- 비밀번호 재설정 형식,일치 확인 -->
<script type="text/javascript">
	
	const pw_sub = document.querySelector('input[name="pw_sub"]') 
	pw_sub.onblur = pwCheckHandler
	
	// 비밀번호 일치확인
	const pw = document.querySelector('input[name="pw"]')
	const pw_err = document.querySelector('.pw_err')
	pw.onblur = pwEqulsCheck
	
	// 비밀번호 유효성 확인
	function pwCheckHandler() {
	    let pw_sub_err = document.querySelector('.pw_sub_err')
	    let pw_check = pw_sub.value
	    if (pw_check.length < 8 || pw_check.length > 20) {
	        pw_sub_err.innerText = '8자리 ~ 20자리 이내로 입력해주세요.'
	        return false
	    } 
	    else if (pw_check.match(/\s/g)) {
	        pw_sub_err.innerText ='비밀번호는 공백 없이 입력해주세요.'
	        return false
	    } 
	    else if (pw_check.match(/^(?=.*?[0-9])(?=.*?[!@#$])(?=.*?[a-z]).{1,20}$/) == null) {
	        pw_sub_err.innerText ='영문,숫자,특수문자(!@#$)를 혼합하여 입력해주세요.'
	        return false
	    } 
	    else{
	      pw_sub_err.innerText=''
	    	  return true
	    }
	}
	
	//비밀번호 일치 확인
	function pwEqulsCheck(){
	  const pw_subVal = pw_sub.value
	  if(pw.value != pw_subVal){
	    pw_err.innerText = '비밀번호가 일치하지 않습니다'
	    return false
	  }
	  else{
	    pw_err.innerText = ''
	    return true
	  }
	}
	
	function allCheck(){
		if(pwCheckHandler() == false){
			alert('비밀번호를 확인해주세요')
			pw_sub.focus()
			return false
		}else if(pwEqulsCheck() == false){
			alert('비밀번호가 일치하지 않습니다')
			pw.focus()
			return false
		}else{
	      alert('비밀번호가 수정되었습니다 로그인 해주세요.')
			return true
		}
	}
	
</script>    
    
<!-- 비밀번호 입력시 히든에 추가 코드 -->
<script>

	const ph_num = document.querySelector('input[id="phnum"]')
	
	function hiddenPhNumberHandler(event){
		const phone_number = document.querySelector('input[id="phoneNumber"]')
		phone_number.value = event.target.value
	}
	
	ph_num.onkeyup = hiddenPhNumberHandler
	
</script>
<!-- 비밀번호 입력시 히든에 추가 코드 end-->

<!-- 이메일 보내기 -->
<script>

	const sendForm = document.forms[0]
	function sendEmailHandler(event){
		event.preventDefault()
		const email = document.querySelector('input[name="email"]').value
		const url = '${cpath}/sendAuthNumber'
		const phone_number = document.querySelector('input[id="phnum"]').value
		
		fetch(url + '?email=' +email + '&phone_number=' + phone_number)
		.then(resp => resp.text())
		.then(text=>{
			if(text != 0){
				document.getElementById('emailInput').classList.add('hidden')
				document.getElementById('check').classList.remove('hidden')
				alert('인증번호가 발송되었습니다. 메일을 확인해주세요')
				
			}else{
				alert('찾을수 없는 사용자입니다.')
			}	
		})
		.catch(ex => {	
			console.log(ex)
		})
	}
	
	sendForm.onsubmit = sendEmailHandler
	
</script>

<!-- 이메일 인증 -->
<script type="text/javascript">
	const checkForm = document.forms[1]
	checkForm.onsubmit = function(event){
		event.preventDefault()


		const ob ={
	
		 	email : document.querySelector('input[id="email"]').value,
		 	
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