<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<style>
	.modal {
		display: none;
	}
	.content {
		position: absolute;
		top: 50%;
		left: 50%;
		
		width: 1000px;
		height: 800px;
		
		display: none;
		background-color: #dadada;
		
		padding: 50px;
		text-align: center;
		
		border-radius: 10px;
		box-shadow: 0 2px 3px 0 black;
		
		transform: translateX(-50%) translateY(-50%);
	}
	.preBtn {
		position: absolute;
		top: 50%;
		left: 0;
		
		display: none;
		
		padding: 10px;
		text-align: center;
		
		border-radius: 10px;
	}
	.nextBtn {
		position: absolute;
		top: 50%;
		right: 0;
		
		display: none;
		
		padding: 10px;
		text-align: center;
		
		border-radius: 10px;
	}
	.item:hover {
		cursor: pointer;
	}
</style>
<script>
	const cpath = '${cpath}'
	const size = '${size}'
</script>
<div class="list">
	<div class="items">
		<c:forEach var="dto" items="${list }" varStatus="status">				
		<div class="item" offset="${status.index }" idx="${dto.post_idx }">
			<div><img src="${cpath}/upload/${dto.file_name }"></div>
			<p>${dto.post_idx }</p>		
		</div>			
		</c:forEach>			
	</div>
</div>
<div>
	<a href="${cpath }/post/add"><button>글작성</button></a>
</div>

<div class="modal">
	<div class="preBtn"><button>이전</button></div>
	<div class="content"></div>
	<div class="nextBtn"><button>다음</button></div>
</div>

<script>
	const modal = document.querySelector('.modal')
	const content = document.querySelector('.content')
	const preBtn = document.querySelector('.preBtn')
	const nextBtn = document.querySelector('.nextBtn')
	const itemList = document.querySelectorAll('.item')
	itemList.forEach(e => e.onclick = itemClickHandler)
	
	function itemClickHandler(event) {
		let eventValue = event.target
		while(eventValue.className != 'item') {
			eventValue = eventValue.parentNode
		}
		console.log(eventValue)
		const post_idx = eventValue.getAttribute('idx')
		console.log(post_idx)
		const offset = eventValue.getAttribute('offset')
		console.log(offset)
		const url = cpath + '/post/modalTest/' + post_idx
		console.log(size)
		fetch(url)
		.then(resp => resp.json())
		.then(json => {
// 			console.log(json)
			const dto = json
			let tag = '<div class="idx">' + dto.idx + '</div>'			
			tag += '<div class="users_idx">' + dto.users_idx + '</div>'			
			tag += '<pre>' + dto.content + '</pre>'
			tag += '<div>' + dto.location + '</div>'
			tag += '<div>' + dto.views + '</div>'
			tag += '<div class="offset">' + offset + '</div>'
			
			content.innerHTML += tag
			modal.style.display = 'block'
			content.style.display = 'block'
			if(offset != 0) preBtn.style.display = 'block'
			if(offset != size - 1) nextBtn.style.display = 'block'			
			
		})		
	}
	
	nextBtn.onclick = nextClickHandler
	preBtn.onclick = preClickHandler
	
	function nextClickHandler(event) {
		const eventValue = event.target.parentNode.parentNode
		const users_idx = eventValue.querySelector('.content').querySelector('.users_idx').innerText
		const offset = +eventValue.querySelector('.content').querySelector('.offset').innerText + 1
		console.log(users_idx)
		console.log(offset)
		const url = cpath + '/post/modalTest/' + users_idx + '/' + offset
		console.log(url)
		
		fetch(url)
		.then(resp => resp.json())
		.then(json => {
			console.log(json)
			const dto = json
			let tag = '<div class="idx">' + dto.idx + '</div>'			
			tag += '<div class="users_idx">' + dto.users_idx + '</div>'			
			tag += '<pre>' + dto.content + '</pre>'
			tag += '<div>' + dto.location + '</div>'
			tag += '<div>' + dto.views + '</div>'
			tag += '<div class="offset">' + offset + '</div>'
			
			content.innerHTML = ''
			content.innerHTML += tag
		})
	}
	
	function preClickHandler(event) {
		const eventValue = event.target.parentNode.parentNode
		const users_idx = eventValue.querySelector('.content').querySelector('.users_idx').innerText
		const offset = +eventValue.querySelector('.content').querySelector('.offset').innerText - 1 
		console.log(users_idx)
		console.log(offset)
		const url = cpath + '/post/modalTest/' + users_idx + '/' + offset
		console.log(url)
		
		fetch(url)
		.then(resp => resp.json())
		.then(json => {
			console.log(json)
			const dto = json
			let tag = '<div class="idx">' + dto.idx + '</div>'			
			tag += '<div class="users_idx">' + dto.users_idx + '</div>'			
			tag += '<pre>' + dto.content + '</pre>'
			tag += '<div>' + dto.location + '</div>'
			tag += '<div>' + dto.views + '</div>'
			tag += '<div class="offset">' + offset + '</div>'
			
			content.innerHTML = ''
			content.innerHTML += tag
		})
	}
</script>
</body>
</html>