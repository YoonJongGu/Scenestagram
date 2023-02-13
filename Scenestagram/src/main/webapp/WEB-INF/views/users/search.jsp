<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<form method="GET" id="form">
	<input type="radio" name="option" value="usersOption">유저
	<input type="radio" name="option" value="hashOption">#
	<input id="searchValue" type="text" name="searchValue" placeholder="검색">
	<input type="submit" value="검색">
</form>

<div id="root"></div>

<table>
  <tr>
    <th>힣</th>
  </tr>
  <c:forEach var="dto" items="${list }">
	  <tr>
	    <td>${dto.name }</td>
	  </tr>
  </c:forEach>
</table>



<script>
	const root = document.getElementById('root')
	const form = document.getElementById('form')
	
	function searchHandler(event) {
		event.preventDefault()
		
		const formData = new FormData(event.target)
		const ob = {}
		for(let key of formData.keys()) {
			ob[key] = formData.get(key)
		}
		console.log(ob)
		
		const url = '${cpath}/search?option=' + ob.option + '&searchValue=' + ob.searchValue		
		fetch(url)
		.then(resp => resp.json())
		.then(json => {
			console.log(json)
			
// 			json.forEach(dto => {
// 				let tag = ''
// 				tag += '<div class="item" idx="' + dto.name +'">'
// 				tag += '</div>'
// 				root.innerText += tag
// 			})
		})
	}
	
	form.onsubmit = searchHandler

</script>

</body>
</html>