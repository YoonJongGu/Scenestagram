<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<style>
	#textarea {
		box-sizing: border-box;
		width: 400px;
		height: 75vh;	/* 브라우저의 높이 기준 상대적인 비율 */
		margin: auto;
		padding: 10px;
		border: 2px solid black;
		
		overflow-y: auto;	/* 내용이 길면 스크롤바가 생기고 평소에는 없음 */
		background-color: #d5e4ff;
		margin-bottom: 10px; 
	}
	.bottom {
		width: 400px;
		margin: auto;
	}
	span {
		color: black;
	}
</style>

<script>
	function onMessage(event) {	// 메시지를 받으면 수행하는 함수
		let tag = '<div>'
		tag += '<span>' + JSON.parse(event.data).username + '</span>'
		tag += ' : <span>' + JSON.parse(event.data).message + '</span>'
		tag += '</div>'
		textarea.innerHTML += tag
		
		// 메시지가 길어지면 자동으로 아래로 스크롤
		textarea.scroll({top: textarea.scrollHeight, behavior: 'smooth'})
	}
	function keyHandler(event) {
		if(event.key == 'Enter') {	// 입력한 키가 엔터키이면
			sendHandler(event)		// 보내는 함수를 호출
		}
	}
	function sendHandler(event) {
		const message = send.value
		send.value = ''
		const payload = {
			username: username,
			message: message
		}
		ws.send(JSON.stringify(payload))
		send.focus()
	}
</script>

<c:if test="${empty username }">
	<c:redirect url="/chat/home" />
</c:if>

<h1>채팅</h1>
<hr>

<div id="textarea"></div>
<div class="bottom">
	<input id="send" type="text" name="send" autofocus>
	<input id="btn" type="button" value="전송">
	<a href="${cpath }/chat/out"><input type="button" value="나가기"></a>
</div>

<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>

<script>
	const cpath = '${cpath}'	
	const username = '${username}'
	const btn = document.getElementById('btn')
	console.log(btn)
	const send = document.getElementById('send')
	console.log(send)
	const textarea = document.getElementById('textarea')
	console.log(textarea)
	const ws = new SockJS(cpath + '/chat')
	console.log(ws)
	
	ws.onmessage = onMessage
	ws.onopen = function(msg) {}	// 웹소켓이 열리면
	ws.onclose = function(msg) {}	// 웹소켓이 닫히면
	ws.onerror = function(msg) {}	// 웹소켓 에러가 발생하면 (아무것도 안한다)
	
	btn.onclick = sendHandler	// 버튼 클릭하면 보내는 함수
	send.onkeyup = keyHandler	// 키 입력하면 조건에 따라 보내는 함수로 연결
</script>

</body>
</html>