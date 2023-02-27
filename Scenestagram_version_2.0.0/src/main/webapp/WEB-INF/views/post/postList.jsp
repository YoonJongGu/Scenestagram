<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<style>
   .items {
      display: flex;
      flex-wrap: wrap;
      margin: 0 -10px;
   }
   .item {
      margin-bottom: 20px;
      margin-left: 10px;
      margin-right: 10px;
   }
   
   .list > .items > .item img {
   width: 300px;
   height: 300px;
   object-fit: cover;
   }

   .item p {
      margin-top: 10px;
      text-align: center;
   }
   
   
   .list > .items {
	width: 1000px;
	display: flex;
	flex-wrap: wrap;
	margin: auto;
	}
	
	.main_wrap {
		overflow-y: scroll;
		height: 1000px;
	}
	.main_wrap::-webkit-scrollbar {display: none;}
	
	#postListHeader > #align {
		display: flex;
    	justify-content: center;
	}
	
	div.img-box .img {
	    position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    width: 100%;
	}
	
</style>
<body onload = "resultCountHandler(); scrollHandler();">

<!-- <div id="postListHeader"> -->
<!-- 	<div id="flex"> -->
<!-- 		<div>이미지자리</div> -->
<!-- 		<div> -->
<%-- 			<div id="result">${hashtag }</div> --%>
<!-- 			<div>게시물</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- </div> -->

<div class="all_wrap">
   <div class="main_wrap" offset="0">
   		<div id="postListHeader">
   			<div id="align">
   				<div class="img-box" style="margin-right: 60px;">
					<img src="${cpath}/upload/${dto.file_name}">
				</div>
				<div>
					<div id="result">${hashtag }</div>
					<div><span>게시물 </span><span id="resultCount"></span></div>
				</div>
			</div>
      	<div class="list">
         	<div class="items">
				<!-- 여기에 박힘 -->
         	</div>
      	</div>
      </div>
   </div>
</div>

<!-- 스크롤 -->
<script>
   const result = document.getElementById('result')
   const hashtag = result.innerText
   console.log(result.innerText)
   const items = document.querySelector('.items')
   const main_wrap = document.querySelector('.main_wrap')
   const resultCount = document.getElementById('resultCount')// 게시글 개수
   
   <!-- 게시글 개수 반환 -->
   function resultCountHandler() {
// 		const url = '${cpath}/resultCount/' + hashtag
		fetch('${cpath}/resultCount/' + hashtag)
		.then(resp => resp.text())
		.then(text => {
			resultCount.innerText += text
		})
	}
   
   
   function scrollHandler() {	
		const offset = +main_wrap.getAttribute('offset')
		const cur = main_wrap.scrollTop + main_wrap.clientHeight
		console.log(main_wrap.scrollTop, main_wrap.clientHeight)
		const flag = (main_wrap.scrollHeight * 0.95 <= cur && cur <= main_wrap.scrollHeight * 1.05) || offset == 0
		console.log(cur, flag)
		if(flag) {
			fetch('${cpath}/getPostList/' + offset + '/' + hashtag)
			.then(resp => resp.json())
			.then(json => {
				json.forEach(dto => {
					let tag = ''
					tag += '<div class="item">'
					tag += '<a href="${cpath }/post/detail/' + dto.post_idx + '">'
					tag += '<img src="${cpath}/upload/' + dto.file_name + '">'
					tag += '</a>'
					tag += '</div>'
					items.innerHTML += tag
					main_wrap.setAttribute('offset', offset + 12)
				})
			})
		}
	}
   
// window.onload = resultCountHandler
// window.onload = scrollHandler
main_wrap.onscroll = scrollHandler
</script>

</body>
</html>