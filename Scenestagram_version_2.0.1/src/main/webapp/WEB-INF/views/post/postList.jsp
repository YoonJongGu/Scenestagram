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
   
   .hidden{
  	 	display: none;
   	    visibility: hidden;
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
	   	display: flex;
	    overflow-y: scroll;
	    height: 100vh;
	    justify-content: end;
	    padding: 0;
    	width: 94%;
	}
	.main_wrap::-webkit-scrollbar {display: none;}
	
	#postListHeader > #align {
		height: 29%;
	    display: flex;
	    align-items: center;
	}
	.all_wrap{
	    position: absolute;
	    left: 0;
	    top: 0;
	    margin-left: 36px;
	    width: 100%;
	    display: flex;
	    justify-content: center;

	}
	
	
.img-box {
	width: 20%;
   	margin-left: 99px;
}
.img-box > img{
    margin-right: 60px;
   	width: 152px;
   	display: block;
   	border-radius: 80px;
}

#postListHeader{
	width: 85%;
}
.top_right{
 	width: 62%;
}
.top_right > div:first-child {
	font-size: 30px;
}
.top_right > div:nth-child(2) *{
	font-size: 16px;
}
.top_right > div:nth-child(3){
	margin-top: 25px;
    font-weight: bold;
    background-color: #0095f6;
    height: 32px;
    border-radius: 8px;
    text-align: center;
	padding: 3px;
    cursor: pointer;
}	
.top_right > div:nth-child(3):hover {
	background-color: #1877f2
}
	
</style>
		
		
	<div class="all_wrap" onload = "resultCountHandler(); scrollHandler();">
	   <div class="main_wrap" offset="0">
	   		<div id="postListHeader">
	   			<div id="align">
	   				<div class="img-box">
						<img src="${cpath}/resources/img/userImg.jpg">
					</div>
					<div class="top_right">
						<div id="result">${hashtag }</div>
						<div><span>게시물 </span><span id="resultCount"></span></div>
						<div>팔로우</div>
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
	</body>

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
	main_wrap.onscroll = scrollHandler
</script>
</html>