<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
#root {
	overflow-x: hidden;
	overflow-y: hidden;
	background-color: #eee;
}
</style>
<%@ include file="../header.jsp"%>


<div id="result">${hashtag }</div>
<div id="root" offset="0"></div>

<script>
	const result = document.getElementById('result')
	const hashtag = result.innerText
	console.log(hashtag)
	
	function loadHandler(event) {
		const root = document.getElementById('root')
		const offset = root.getAttribute('offset')
		console.log(offset)
		
		const cur = root.scrollTop + root.clientHeight
		const flag = root.scrollHeight * 0.97 <= cur && cur <= root.scrollHeight * 1.03
		console.log(cur, flag)
		
		if(flag) {
		const url = '${cpath}/getPostList/' + hashtag +'/'+ offset;
			fetch(url)
			.then(resp => resp.json())
			.then(json => {
				console.log(json)
				
				json.forEach(dto => {
// 					console.log(dto.post_idx)
// 					console.log(dto.file_name)
					let tag = ''
					tag = '<a href="${cpath}/post/detail/' + dto.post_idx + '"><div><img src="${cpath}/upload/' + dto.file_name + '"></div></a>'
					root.innerHTML += tag
					root.setAttribute('offset', offset + 30)
				})
			})
		}
		
	}
	
	window.onload = loadHandler
	root.onscroll = loadHandler
</script>


</body>
</html>