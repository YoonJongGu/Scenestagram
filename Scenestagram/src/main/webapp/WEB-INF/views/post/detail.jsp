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
			<p>LIKECOUNT : ${likeCount }</p>
			<div class="btn">
				<div><button class="like">좋아요</button></div>
				<div class="btn_ud">
					<div><a href="${cpath }/post/modify/${dto.idx }"><button>수정</button></a></div>
					<div><a href="${cpath }/post/remove/${dto.idx }"><button>삭제</button></a></div>
				</div>
			</div>
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
	const content = document.querySelector('pre.content')
	console.log(content.innerText)
	
	function firstHandler(ob) {
		const o = ob.original
				
		if(o[0] == '#') {
			ob.front = o.split('#')[1]
			ob.front_type = 'hash'
		}
		else if(o[0] == '@') {
			ob.front = o.split('@')[1]
			ob.front_type = 'user'
		}
		else {
			ob.front = o
			ob.front_type = 'none'
		}
		
		const otherFilter = '!$%^&*()-=+,?'
		const tagFilter = '@#'		
		const size = ob.front.length
		const tmp = ob.front
		
		if(o.length != ob.front.length || ob.front.includes('#') || ob.front.includes('@')) {
			ob.front = ''			
		}
		
		for(let i = 0; i < size; i++) {
			console.log(tmp[i].charCodeAt())
			if(o.length != ob.front.length) {
				if(tagFilter.includes(tmp[i])) {
					break
				}
				else if(tmp[i].charCodeAt() == 10) {
					ob.front_other += tmp[i]
					break
				}
				else if(otherFilter.includes(tmp[i]) == false) {					
					ob.front += tmp[i]
				}
				else {
					ob.front_other += tmp[i]
				}
			}
		}
		
		if(ob.front_type == 'hash' || ob.front_type == 'user') {
			ob.middle = o.substr(ob.front.length + ob.front_other.length + 1)
		}
		else {
			ob.middle = o.substr(ob.front.length + ob.front_other.length)
		}		
		
		return ob		
	}
	
	function secondHandler(ob) {
		const flag = ob.front_type == 'hash' || ob.front_type == 'user'		
		const o = flag ? ob.original.substr(ob.front.length + ob.front_other.length + 1) : ob.original.substr(ob.front.length + ob.front_other.length)		
		
		if(o[0] == '#') {
			ob.middle = o.split('#')[1]
			ob.middle_type = 'hash'
		}
		else if(o[0] == '@') {
			ob.middle = o.split('@')[1]
			ob.middle_type = 'user'
		}
		else {
			ob.middle = o
			ob.middle_type = 'none'
		}
		
		const otherFilter = '!$%^&*()-=+,?'
		const tagFilter = '@#'		
		const size = ob.middle.length
		const tmp = ob.middle
		
		if(o.length != ob.middle.length || ob.middle.includes('#') || ob.middle.includes('@')) {
			ob.middle = ''			
		}
		
		for(let i = 0; i < size; i++) {
			if(o.length != ob.middle.length) {
				if(tagFilter.includes(tmp[i])) {
					break
				}
				else if(tmp[i].charCodeAt() == 10) {
					ob.middle_other += tmp[i]
					break
				}
				else if(otherFilter.includes(tmp[i]) == false) {					
					ob.middle += tmp[i]
				}
				else {
					ob.middle_other += tmp[i]
				}
			}
		}
		
		if(ob.middle_type == 'hash' || ob.middle_type == 'user') {
			ob.back = o.substr(ob.middle.length + ob.middle_other.length + 1)
		}
		else {
			ob.back = o.substr(ob.middle.length + ob.middle_other.length)
		}			
		
		return ob
	}
	
	function thirdHandler(ob) {
		const flag1 = ob.front_type == 'hash' || ob.front_type == 'user'
		const flag2 = ob.middle_type == 'hash' || ob.middle_type == 'user'
		const ttmp = flag1 ? ob.original.substr(ob.front.length + ob.front_other.length + 1) : ob.original.substr(ob.front.length + ob.front_other.length)
		const o = flag2 ? ttmp.substr(ob.middle.length + ob.middle_other.length + 1) : ttmp.substr(ob.middle.length + ob.middle_other.length)
		
		if(o[0] == '#') {
			ob.back = o.split('#')[1]
			ob.back_type = 'hash'
		}
		else if(o[0] == '@') {
			ob.back = o.split('@')[1]
			ob.back_type = 'user'
		}
		else {
			ob.back = o
			ob.back_type = 'none'
		}
		
		const otherFilter = '!$%^&*()-=+,?'
		const tagFilter = '@#'		
		const size = ob.back.length
		const tmp = ob.back
		
		if(o.length != ob.back.length || ob.back.includes('#') || ob.back.includes('@')) {
			ob.back = ''			
		}
		
		for(let i = 0; i < size; i++) {
			if(o.length != ob.back.length) {
				if(tagFilter.includes(tmp[i])) {
					break
				}
				else if(tmp[i].charCodeAt() == 10) {
					ob.back_other += tmp[i]
					break
				}
				else if(otherFilter.includes(tmp[i]) == false) {					
					ob.back += tmp[i]
				}
				else {
					ob.back_other += tmp[i]
				}
			}
		}
		
		return ob
	}
	
	function tagHandler(ob) {
		let tag = ''
		if(ob.front_type != '') {
			if(ob.front_type == 'hash') {
				tag += '<a href="test">#' + ob.front + '</a>' + ob.front_other
			}
			else if(ob.front_type == 'user') {
				tag += '<a href="test">@' + ob.front + '</a>' + ob.front_other
			}
			else {
				tag += ob.front + ob.front_other
			}
		}
		if(ob.middle_type != '') {
			if(ob.middle_type == 'hash') {
				tag += '<a href="test">#' + ob.middle + '</a>' + ob.middle_other
			}
			else if(ob.middle_type == 'user') {
				tag += '<a href="test">@' + ob.middle + '</a>' + ob.middle_other
			}
			else {
				tag += ob.middle + ob.middle_other
			}
		}
		if(ob.back_type != '') {
			if(ob.back_type == 'hash') {
				tag += '<a href="test">#' + ob.back + '</a>' + ob.back_other
			}
			else if(ob.back_type == 'user') {
				tag += '<a href="test">@' + ob.back + '</a>' + ob.back_other
			}
			else {
				tag += ob.back + ob.back_other
			}
		}
		return tag		
	}
	
	const hashTagArr = content.innerText.split(' ').map(e => {
		let ob = {
			original: e,
			front: '',
			middle: '',				
			back: '',
			front_other: '',
			middle_other: '',
			back_other: '',
			front_type: '',
			middle_type: '',
			back_type: ''
		}
		
		firstHandler(ob)
		secondHandler(ob)
		thirdHandler(ob)
		
		ob.link = tagHandler(ob)
		
		return ob
	})
	console.log(hashTagArr)
	
	content.innerHTML = ''
	for(let i = 0; i < hashTagArr.length; i++) {
		content.innerHTML += hashTagArr[i].link
		if(i != hashTagArr.length - 1) {
			content.innerHTML += ' '
		}
	}
	console.log(content)
</script>

</body>
</html>