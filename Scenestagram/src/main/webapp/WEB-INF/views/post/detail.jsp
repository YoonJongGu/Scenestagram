<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div class="list">
	<div class="items">		
		<div class="item">
			<div class="img">
			<c:forTokens var="fileName" items="${image }" delims=",">
				<div><img src="${cpath }/upload/${fileName }"></div>
			</c:forTokens>
			</div>
			<c:set var="post_idx" value="${dto.idx }" />
			<p>IDX : ${dto.idx }</p>
			<p>USER_IDX : ${dto.users_idx }</p>
			<p>CONTENT : </p><pre class="content">${dto.content }</pre>
			<p>LOACTION : ${dto.location }</p>
			<p>REGIST_DATE : ${dto.regist_date }</p>
			<p>STATUS : ${dto.status }</p>			
			<p>VIEWS : ${dto.views }</p>
			<div><button class="like">좋아요</button></div>
			<div>${like }</div>			
		</div>				
	</div>
</div>

<script>
	const like = document.querySelector('.like')	
	
	function likeHandler() {
		const url = '${cpath}/post/like/status/${post_idx}'
		fetch(url)
		.then(resp => resp.text())
		.then(text => {
			if(text == 0) like.innerText = '좋아요'
			else like.innerText = '좋아요 중'
		})
		
	}
	
	like.onclick = function() {
		const url = '${cpath }/post/like/${post_idx }'
		console.log(url)
		fetch(url)
		.then(resp => resp.text())
		.then(text => {
			console.log(text)
			like.innerText = ''
			if(text == 0) {					
				like.innerText = '좋아요'
			}
			else {
				like.innerText = '좋아요 중'
			}
		})
	}
	document.body.onload = likeHandler
</script>

<script>
	let content = document.querySelector('pre.content')
	const arr = []
	console.log(content.innerText)
	let str = '#'
	
	const c_text = content.innerText.split('#')
	arr.push(c_text[0])
	console.log(c_text)
// 	for(let i = 0; i< c_text.length; i++) {
// 		if(c_text[i].includes('\n')) {
// 			c_text[i] = c_text[i].replace('\n', '<br>')
// 		}
// 	}
	
	for(let i = 1; i < c_text.length; i++) {
		for(let ch of c_text[i]) {
			console.log(ch.charCodeAt())
			const ch_code = ch.charCodeAt()
			if((ch_code >= 48 && ch_code <= 57) || (ch_code >= 65 && ch_code <= 90) || (ch_code >= 97 && ch_code <= 122) || ch_code == 95 || ch_code > 127) {
				str += ch
			}
			else {
				break;
			}
		}
		console.log(str)
		const sp_ch = c_text[i].split(str.substr(1, str.length))
		console.log(sp_ch)		
		arr.push(str)
		arr.push(sp_ch[1])
		str = '#'
	}
	console.log(arr)
	content.innerText = ''	
	for(let i = 0; i < arr.length; i++) {
		if(arr[i].includes('#')) {
			const tag = document.createElement('a')
			tag.href = 'test'			
			tag.innerText = arr[i]
			console.log(tag)
			content.appendChild(tag)
		}
		else {
			const tag = document.createElement('span')
			tag.innerText = arr[i]
			console.log(tag)
			content.appendChild(tag)
		}
	}
	console.log(content)
	
</script>

</body>
</html>