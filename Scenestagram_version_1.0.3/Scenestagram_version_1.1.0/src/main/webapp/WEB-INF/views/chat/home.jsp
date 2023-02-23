<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<h1>채팅방 목록</h1>
<hr>

<div id="room">
	<c:forEach var="room" items="${list }">
		<div>룸 IDX : ${room.IDX }</div>
		<div>상대방 회원 IDX : ${room.USERS_IDX }</div>
		<div><a href="${cpath }/chat/main?room_idx=${room.IDX }">상대방 회원 닉네임 : ${room.NICK_NAME }</a></div>
	</c:forEach>
</div>

<fieldset style="margin: 20px auto; width: 70%;">
	<ul>
		<li>ws05에서 파일 전송 기능을 시도(진행중: 실패)</li>
		<li>sockJS 에서는 바이너리 전송 기능을 지원하지 않습니다</li>
		
		<li>아래는 살펴봐야 할 코드입니다</li>
		<br>
			<ol>
				<li>src/main/webapp/resources/js/chat.js</li>
				<li>src/main/webapp/resources/css/chatToTarget.css</li>
				<li>src/main/webapp/resources/js/chatToTarget.js</li>
				<li>src/main/java/com/itbank/chat/ChatComponent.java</li>
			</ol>
		</li>
	</ul>
</fieldset>

<div id="test"
	 style="width: 100px; height: 100px; background-color: red"></div>
<script>
	document.getElementById('test').oncontextmenu = (event) => {
		event.preventDefault()
		event.target.style.backgroundColor = 'blue'
	}
</script>

</body>
</html>