<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../header.jsp" %>

<style>

/* 댓글박스 */
textarea {
    background-color: #262626;
    color: #fff;
}
html{
	overflow-y: hidden;
}
body {
    background-color: #0f0f0f;
}
div {
    background-color: #000;
    min-height: auto;
    min-width: auto;
    display: block;
   
}

/* div클래스 명이 flex이면 display flex속성 적용 */
/* 클래스명은 여러가지가 되기때문에 일일히 style적용하기 번거로워서 */
div.flex {display: flex;}

/* 위와 같음 */
.i-col-0>* {
    display: inline-block;
    font-size: 16px;
    vertical-align: middle;
    width: auto;
}


/* 메뉴에 마우스호버 했을 때 */
li:hover{
    background-color: rgb(18,18,18);    
    border-radius: 24px;
}

/* img 기본틀 */
div.img-box .img {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 100%;
}

div.screen {
	width:100%;
    display: flex;
    height: 100vh;
    overflow-y: scroll;
    flex-flow: column;
    overflow-x:hidden;
}
/*푸터*/
.footer{
	margin-left: 300px;
    text-align: center;
    width: 600px;
}

  /*사이드 메뉴 로고박스  */
div.menu-top {
    padding: 25px 12px 35px;
}


.left-gnb-ul li a {
    display: block;
    font-size: 16px;
    color: #fff;
    padding: 16px 12px;
}

.left-gnb-ul li a span.icon {
    display: inline-block;
    vertical-align: middle;
}

.left-gnb-ul li a span:last-child {
    padding-left: 16px;
    vertical-align: middle;
    display: inline-block;
}

.left-bottom {
    padding: 16px 12px;
    font-size: 16px;
    color: #fff;
    position: absolute;
    left: 12px;
    bottom: 20px;
    width: 93%;
}

/* 메뉴 밑에 더보기를 메뉴들과 열을 맞추기 위함 */
.left-bottom span:last-child {
    padding-left: 16px;
}

/*회원님을 위한 추천 프로필 ui*/
#recommend-friend  img{
	width: 32px;
    border-radius: 30px;
}
#recommend-friend > div a{
	font-size: 14px;
    font-weight: 500;
}
#recommend-friend > div  >  div:nth-child(2){
	margin-left: 17px;
    font-size: 12px;
    color: #a8a8a8 !important;
    width: 67%;
	
}
.followBtn button {
    background-color: #3897f0;
    color: #fff;
    border: none;
    border-radius: 3px;
    padding: 7px 16px;
    font-weight: bold;
    font-size: 12px;
}
.followBtn.unfollow button {
    background-color: #efefef;
    color: #333;
}
.followBtn button:hover {
    cursor: pointer;
}
div.home_main {
    width: 100vh;
    height: 500px;
    display: flex;            
	height: 100vh;
    /* 나중에 수정 */
    background-color: #000;
    
}



div.main{
    display: block;
    min-height: auto;
    min-width: auto;
    
    /* max-width: 853px; */
    
}

div.home-feed {
    display: flex;
    width: 80%;
}

/* 스토리, 게시글 */
div.home-feed-left {
    display: block;
    min-width: 470px;
    margin-right: 64px;
}

div.home-feed-right {
    display: block;
    position: sticky;
    /* width: 319px; */
}

div.story {
    display: flex;
}

div.insta-main-top {
    padding: 32px 0 16px;
    overflow: hidden;
    position: relative;
    width: 2000px;
}
div.insta-main-top-ul {
    display: flex;
}

div.insta-post-item {
    border-bottom: 1px solid rgb(38, 38, 38);
    padding-bottom: 20px;
    margin-bottom: 12px;
}
div.insta-post-item-top {
    display: flex;
    position: relative;
    padding: 12px 0;
}

div.insta-post-item-top .img-box {
    position: relative;
    width: 32px;
    height: 32px;
    border-radius: 50%;
    overflow: hidden;
}
div.insta-post-item-top .img-box img {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 100%;
}

div.insta-post-item-top .id-box {
    font-size: 14px;
    color: #a8a8a8;
    padding-left: 10px;
}

div.insta-post-item-top .id-box .id {
    color: #fff;
}

div.insta-post-item-top .id-box .day {
    color: #a8a8a8;
}

div.insta-post-item-top .option-box {
    position: absolute;
    top: 50%;
    right: 0;
    transform: translateY(-50%);
}

/* 게시글 사진 */

div.insta-post-item-middle {}

div.insta-post-item-middle .img-box {
	display: flex;
    position: relative;
    width: 470px;
	height: 350px;
    padding-bottom: 74.7%;
    overflow: hidden;
    border-radius: 4px;
}
div.insta-post-item-middle .img-box .images-box {
	position: absolute;
	display: flex;		
	height: 350px;
	left: 0px;	
	transition-duration: 0.5s;
}

div.insta-post-item-middle .img-box .images-box .image-box {
	position: relative;
	top: 0;
	width: 470px;
	height: 350px;
	flex: 1;
	display: flex;
	justify-content: center;
	align-items: center;
	background-size: auto 100%;
	background-position: center center;
	background-repeat: no-repeat;
}

/* 이미지를 가운데에 배치하는 작업 */
div.insta-post-item-middle .img-box .images-box .image-box img {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 470px;
    height: 350px;
}

/* 좋아요, 댓글, DM버튼 ...  */
div.insta-post-item-btn-box {
   
    
    padding: 15px 0 5px;
    
}

div.insta-post-item-btn-ul {
    
    margin: -8px;
    position: relative;
    
}

div.insta-post-item-btn-ul li {
    padding: 8px;
}


/* 북마크(저장) */
div.insta-post-item-btn-ul li.bookmark {
    position: absolute;
    top: 50%;
    right: 0;
    transform: translateY(-50%);
}

div.insta-post-item-comment {}

/* 좋아요 */
div.insta-post-item-comment .good {
    font-weight: 600;
    font-size: 14px;
    color: #fff;
}

/* 홈피드 top에 패딩 주어서 위치설정 */
div.home-feed {padding-top: 40px;}

/* 오른쪽 포스트 */

div.home-feed-right {min-width: 347px;}


/* 피드 오른쪽 top 마이프로필 */
div.home-feed-right-myprofile {
    display: flex;
    justify-content: space-between;
}
div.home-feed-right-myprofile .img-box {

    width: 56px;
    height: 56px;
    border-radius: 50%;
    overflow: hidden;
    position: relative;
    display: inline-block;
}

div.home-feed-right-myprofile .img-box img {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 100%;
}
div.home-feed-right-myprofile > div {
    display: flex;
    
}
div.home-feed-right-myprofile .id-box{
	margin: 7px 0 0 18px;
}
div.home-feed-right-myprofile .id-box div{
	    font-weight: 500;
}
.recommend_ment{
	font-size: 12px;
    color: #a8a8a8
}

/* 추천회원 프로필 img */
div.flex > .img-box {
    width: 66px;
    height: 66px;
    border-radius: 50%;
    overflow: hidden;
    border: 2px solid #1cd14f;
    position: relative;
    
}
div.flex > .img-box > img {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 100%;
}

div.account-change {

}

div.hidden {display: none;}

div.left-bottom-menu {
    display: none;
    flex-direction:column;
    justify-content: space-around;
    width: 100%;
    position: absolute;
    bottom: 63px;
    border: 1px dashed;
    height: 400px;
    font-size: 16px;
    z-index: 1;
}
div.left-bottom.i-col-0:hover div.left-bottom-menu {
    display: flex;
}

div.left-bottom-menu >div > * {
    display: flex;
    justify-content: space-between;
    vertical-align: middle;
    
}

div.mypage {
    max-width: 935px;
    width: 935px;
}

div.insta-post-item-middle > * {
    width: 300px;
    height: 300px;
    
}
.recommend > div{
	margin: 20px 0px;
} 

#recommend-friend > div{
	height: 48px;
}

div.insta-post-item textarea {
	margin-top: 10px;
    width: 100%;
    background-color: #000;
    border: none;
    resize: none;
	
}
li.insta-post-item-like-li {
	margin-right: 5px;
}
li.insta-post-item-reply-li:hover {
	cursor: pointer;
}
.id-box span {
	margin-right: 5px;
	font-size: 18px;
}


@media (width < 1200px) {
	div.home-feed-right {
	  display: none;
	}	  
}
 
.modal {
	display: none;
}
.modal_content {		
	position: absolute;		
	
	top: 450px;
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
	z-index: 5;
}
.image_content {
	display: flex;		
	align-items: center;
	position: relative;
	
	width: 700px;
	height: 700px;
	
	overflow: hidden;	
}
.post_content {
	width: 200px;
	text-align: center;
	background-color: #dadada;
}
.post_content > div {
	background-color: #dadada;
}
.post_content pre {
	white-space: pre-wrap;
}
.left,
.left_btn {
	position: absolute;
	top: 50%;
	left: 0px;		
	
	display: none;
	text-align: center;
	
	border-radius: 10px;
	z-index: 5;
}
.right,
.right_btn {
	position: absolute;
	top: 50%;
	right: 0px;		
			
	text-align: center;
	
	border-radius: 10px;
	z-index: 5;
}

.item:hover {
	cursor: pointer;
}
.images {
	position: absolute;
	display: flex;		
	height: 500px;
	left: 0px;	
	transition-duration: 0.5s;		
}
.image {
	position: relative;
	top: 0;
	width: 700px;
	height: 500px;
	flex: 1;
	display: flex;
	justify-content: center;
	align-items: center;
	background-size: auto 100%;
	background-position: center center;
	background-repeat: no-repeat;			
}
.image > img {
	width: 700px;
	height: 700px;
}
#modal_overlay {		
	position: absolute;		
	top: 0;
	left: 0;
	
	width: 100%;
	height: 100vh;
	
	display: none;
	
	background-color: rgba(0, 0, 0, 0.6);
	z-index: 4;
}
.hidden {
	display: none;
}
</style>
<script>
	const cpath = '${cpath}'
</script>
</head>
<body onload="loadHandler(); scrollHandler();">

<div class="screen" offset="0">


        <!-- 가운데 메인 -->
   <div class="all_wrap">
    	<div class="main_wrap">    
        <div class="home_main">
            <div class="main">
                <div style="display: block;">
                    <div class="home-feed" id="home-feed">
                        <div class="home-feed-left">
                            <!-- 스토리-->
                            <div class="stoty">
                            </div>
                            <!-- 게시물 (POST) -->
                            <div class="post" id="post">
                            </div>
                            <!-- 게시물 (POST) end -->
                        </div>
						<!-- 메인피드의 오른쪽 마이프로필 및 추천 -->
                        <div class="home-feed-right">
                            <div class="home-feed-right-myprofile">
                                <div>
                                    <div class="img-box">
                                        <img src="${cpath}/resources/img/userImg.jpg" alt="">
                                    </div>
                                    <div class="id-box">
                                        <a href="">
                                            <div>${login.nick_name }</div>
                                        </a>
                                        <span class="id">${login.name }</span>

                                    </div>
                                </div>
                            </div>
                            <div class="recommend">
                                <div class="flex">
                                   <div style=" display:flex; justify-content: space-between; width:100%;">
                                       <div>회원님을 위한 추천</div>
                                       <div><a href="${cpath }/users/recommendAll">모두보기</a></div>
                                    </div>
                                </div>
                                <div id="recommend-friend"></div>
<!--                                 <div class="flex"> -->
<!--                                     <div class="img-box"> -->
<%--                                         <img class="" src="${cpath}/resources/img/insta-profile.jpg">추천회원img</img> --%>
<!--                                     </div> -->
<!--                                     <div> -->
<!--                                         <div>추천회원이름</div> -->
<!--                                         <div>rok1212님이 팔로우 합니다</div> -->
<!--                                     </div> -->
<!--                                     <div>팔로우btn</div> -->
<!--                                 </div> -->
                            </div>
                        </div>
                        <!-- 메인피드의 오른쪽 마이프로필 및 추천 end-->
                    </div>
                </div>
            </div>
        </div>
        <!-- 가운데 메인 end-->
        </div>
	</div>
</div>

<div id="modal">	
	<div class="modal_content">
		<div class="image_content">
			<div class="left"><button>이전</button></div>
			<div class="images" index="0"></div>
			<div class="right"><button>다음</button></div>
		</div>
		<div class="post_content"></div>
	</div>	
	<div id="modal_overlay"></div>
</div>

<!--  추천인 스크립트 -->
<script>
   const recofri = document.getElementById('recommend-friend')
   
   function loadHandler() {
      const url = '${cpath}/countFollowing/${login.idx}'
      fetch(url)
      .then(resp => resp.text())
      .then(text => {
      
	      if(text == 0) {
	         location.href = '${cpath}/users/recommendAll'
	      }
	         else {
	         recommendHandler()
	      }
         
      })
      
   }
   
   function recommendHandler() {
     let friend5Cut = 0;      // 5명만 보여주게 할 것
      const url = '${cpath}/recommend/${login.idx}'
      fetch(url)
      .then(resp => resp.json())
      .then(json => {
         json.forEach(dto => {
            console.log(dto.nick_name)
            console.log(dto.idx)
            if(friend5Cut != 5) {      // 리스트 다 불러온 다음 강제로 5명컷 낸거라 나쁜 코드입니다.
               let tag = ''
               tag += '<div class="flex">'
               tag += '    	<div>'
               tag += '			<a href="${cpath}/users/viewDetail/' + dto.idx + '">'
           	   tag += '				<img class="" src="${cpath}/resources/img/insta-profile.jpg"></img>'
           	   tag += '			</a>'
       		   tag += '     </div>'
           	   tag += '    	<div>'
               tag += '			<a href="${cpath}/users/viewDetail/' + dto.idx + '">' + dto.nick_name + '</a>'
               tag += '         <div class="recommend_ment">회원님을 위한 추천</div>         '
           	   tag += '		</div>'
           	   tag += '<div class="followBtn" idx=' + dto.idx + '><button>팔로우</button></div>'
               tag += '</div>'
               recofri.innerHTML += tag
               
               friend5Cut += 1
            }         
            
//             <div class="flex">
//                 <div class="img-box">
//                     <img class="" src="${cpath}/resources/img/insta-profile.jpg">추천회원img</img>
//                 </div>
//                 <div>
//                     <div>추천회원이름</div>
//                     <div>rok1212님이 팔로우 합니다</div>
//                 </div>
//                 <div>팔로우btn</div>
//             </div>            
         })
        const followBtnList = document.querySelectorAll('div.followBtn')
	   	console.log(followBtnList)
	   	followBtnList.forEach(btn => btn.onclick = followHandler)
      })
      
   }
   
   function followHandler(event) {
	    console.log(event.target.parentNode.getAttribute('idx'))
	    const idx = event.target.parentNode.getAttribute('idx')
	    if(event.target.innerHTML == '팔로우') {
	       fetch('${cpath}/follow/' + idx + '/${login.idx}')
	       .then(resp => resp.text())
	       .then(text => {
	          
	          if(text != 0) {
	             event.target.innerText = '팔로잉'
	             event.target.classList.add('unfollow')
	             
	          }
	       })
	    }
	    else if(event.target.innerHTML == '팔로잉') {
	       fetch('${cpath}/unfollow/' + idx + '/${login.idx}')
	       .then(resp => resp.text())
	       .then(text => {
	          
	          if(text != 0) {
	             event.target.innerText = '팔로우'
	             event.target.classList.remove('unfollow')
	             
	          }
	       })
	    }
	    else {
	       // 이거 안해주면 프로필 편집 버튼 눌렀을 때 위에 else if 애들 손봐줘야 됨
	    }
	 }	
   
//   document.body.onload = loadHandler
    //recommendHandler()

</script>

    
<!-- 타임라인 게시글 스크롤 이벤트 -->
<script type="text/javascript">
	const post = document.querySelector('#post')
  	const screen = document.querySelector('.screen')        		
  	function scrollHandler() {	
		console.log('스크롤 핸들러')
  		const offset = +screen.getAttribute('offset')
          const cur = screen.scrollTop + screen.clientHeight
          const flag = (screen.scrollHeight * 0.9 <= cur && cur <= screen.scrollHeight * 1.1) || offset == 0
          console.log(cur,flag)
          if(flag) {
              fetch('${cpath }/getPostListScroll/' + offset + '/${login.idx }')
              .then(resp => resp.json())
              .then(json => {
                  json.forEach(dto => {
                      let tag = ''
                      tag+= '<div class="insta-post-item">'
                      tag+= '<div class="i-col-0 insta-post-item-top">'
                      tag+= '<div class="img-box">'
                      tag+= '<img src="${cpath}/resources/img/insta-profile.jpg" alt="">' // dto 이미지 추가해야함
                      tag+= '</div>'
                      tag+= '<div class="id-box">'
                      tag+=	'<a href="${cpath}/users/viewDetail/' + dto.USERS_IDX + '">'
                      tag+= '<span class="id">'+ dto.NICK_NAME +'</span>'
                      tag+= '</a>'
                      tag+= '<span>•</span>'
                      tag+= '<span class="day">2일</span>'  // 추가해야함 (게시물 올린 후 경과일수)
                      tag+= '</div>'
                      tag+= '<div class="option-box">'
                      tag+= '<svg aria-label="옵션 더 보기" class="_ab6-" color="#fafafa" fill="#fafafa"'
                      tag+= ' height="24" role="img" viewBox="0 0 24 24" width="24">'
                      tag+= '<circle cx="12" cy="12" r="1.5"></circle>'
                      tag+= '<circle cx="6" cy="12" r="1.5"></circle>'
                      tag+= '<circle cx="18" cy="12" r="1.5"></circle>'
                      tag+= '</svg>'
                      tag+= '</div>'
                      tag+= '</div>'
                      tag+= '<div class="insta-post-item-middle">'
                      tag+= '<div class="img-box">'
                      tag+= '<div class="left_btn"><button>이전</button></div>'
                      tag+= '<div class="images-box" index="0">'
                      const file_name_list = dto.FILE_NAME.split(',')
                      file_name_list.forEach(fileName => {
                    	  tag+= '<div class="image-box">'
                    	  tag+= '<img src="${cpath}/upload/'+ fileName +'" alt="">'
                    	  tag+= '</div>'
                      })                      
                      tag+= '</div>'
                      if(file_name_list.length == 1) {
                    	  tag+= '<div class="right_btn hidden"><button>다음</button></div>'
                      }
                      else {
                    	  tag+= '<div class="right_btn"><button>다음</button></div>'
                      }                      
                      tag+= '</div>'
                      tag+= '</div>'
                      tag+= '<div class="insta-post-item-btn-box">'
                      tag+= '<ul class="i-col-0 insta-post-item-btn-ul">'                      
                      tag+= '<li class="insta-post-item-like-li" idx="' + dto.IDX + '">'
                      tag+= '<a href="">'
                      tag+= '<svg aria-label="좋아요" class="_ab6-" color="#fafafa" fill="#fafafa"'
                      tag+= ' height="24" role="img" viewBox="0 0 24 24" width="24">'
                      tag+= '<path'
                      tag+= ' d="M16.792 3.904A4.989 4.989 0 0 1 21.5 9.122c0 3.072-2.652 4.959-5.197 7.222-2.512 2.243-3.865 3.469-4.303 3.752-.477-.309-2.143-1.823-4.303-3.752C5.141 14.072 2.5 12.167 2.5 9.122a4.989 4.989 0 0 1 4.708-5.218 4.21 4.21 0 0 1 3.675 1.941c.84 1.175.98 1.763 1.12 1.763s.278-.588 1.11-1.766a4.17 4.17 0 0 1 3.679-1.938m0-2a6.04 6.04 0 0 0-4.797 2.127 6.052 6.052 0 0 0-4.787-2.127A6.985 6.985 0 0 0 .5 9.122c0 3.61 2.55 5.827 5.015 7.97.283.246.569.494.853.747l1.027.918a44.998 44.998 0 0 0 3.518 3.018 2 2 0 0 0 2.174 0 45.263 45.263 0 0 0 3.626-3.115l.922-.824c.293-.26.59-.519.885-.774 2.334-2.025 4.98-4.32 4.98-7.94a6.985 6.985 0 0 0-6.708-7.218Z">'
                      tag+= '</path>'
                      tag+= '</svg>'
                      tag+= '</a>'
                      tag+= '</li>'
                      tag+= '<li class="insta-post-item-reply-li" idx="' + dto.IDX + '">'                      
                      tag+= '<svg aria-label="댓글 달기" class="_ab6-" color="#fafafa" fill="#fafafa"'
                      tag+= ' height="24" role="img" viewBox="0 0 24 24" width="24">'
                      tag+= '<path d="M20.656 17.008a9.993 9.993 0 1 0-3.59 3.615L22 22Z"'
                      tag+= ' fill="none" stroke="currentColor" stroke-linejoin="round"'
                      tag+= ' stroke-width="2"></path>'
                      tag+= '</svg>'                      
                      tag+= '</li>'                	  
                      tag+=' <li class="insta-post-item-bookmark-li">'
                      tag+='<a href="">'
                      tag+='<svg aria-label="저장" class="_ab6-" color="#fafafa" fill="#fafafa"'
                      tag+=' height="24" role="img" viewBox="0 0 24 24" width="24">'
                      tag+='<polygon fill="none" points="20 21 12 13.44 4 21 4 3 20 3 20 21"'
                      tag+=' stroke="currentColor" stroke-linecap="round"'
                      tag+=' stroke-linejoin="round" stroke-width="2"></polygon>'
                      tag+='</svg>'
                      tag+='</a>'
                      tag+='</li>'
                      tag+='</ul>'
                      tag+='</div>'
                      tag+='<div class="insta-post-item-comment">'
                      tag+='<p class="good">좋아요 ' + dto.LIKE_COUNT +' 개</p>'
                      tag+='<p class="post-comment">'+ dto.CONTENT +'</p>'
                      tag+='<p class="post-reply">여기는 댓글보여주는곳</p>'
                      tag+='<p class="insta-post-item-reply-li" idx="' + dto.IDX + '">댓글 ' + dto.COMMENTS_COUNT + '개 모두보기</p>'
                      tag+='<textarea aria-label="댓글 달기..." placeholder="댓글 달기..."></textarea>'
                      tag+='</div>'
                      tag+='</div>'
                      post.innerHTML += tag
                      screen.setAttribute('offset', offset + 3)
                  })
                  const itemList = document.querySelectorAll('.insta-post-item-reply-li')
				  console.log(itemList)
				  itemList.forEach(e => e.onclick = itemClickHandler)
				  const commentsList = document.querySelectorAll('.comment_count')
				  console.log(commentsList)
				  commentsList.forEach(e => e.onclick = itemClickHandler)
				  
				  const left_btn = document.querySelectorAll('.left_btn')
				  const right_btn = document.querySelectorAll('.right_btn')
				  left_btn.forEach(e => e.onclick = leftBtnHandler)
				  right_btn.forEach(e => e.onclick = rightBtnHandler)
              })
          }
  	}
//	window.onload = scrollHandler
	screen.onscroll = scrollHandler
			                       	
</script>

<script>
	const modal = document.getElementById('modal')
	const modal_content = document.querySelector('.modal_content')
	const post_content = document.querySelector('.post_content')
	const modal_overlay = document.getElementById('modal_overlay')	
	const left = document.querySelector('.left')
	const right = document.querySelector('.right')	
	
	function itemClickHandler(event) {
		let eventValue = event.target
		while(eventValue.className != 'insta-post-item-reply-li') {
			eventValue = eventValue.parentNode
		}
		console.log(eventValue)
		const post_idx = eventValue.getAttribute('idx')
		console.log(post_idx)
		const url = cpath + '/post/modalTest/' + post_idx
// 		console.log(size)
		fetch(url)
		.then(resp => resp.json())
		.then(json => {
// 			console.log(json)
			const dto = json
			const imgList = dto.FILE_NAME.split(',')			
			const img_size = imgList.length
			console.log(img_size)
			const images = document.querySelector('.images')			
			imgList.forEach(img => {				
				let imageTag = 	'<div class="image">'
				imageTag += 		'<img src=' + cpath + '/upload/' + img + '>'
				imageTag += 	'</div>'
				
				images.innerHTML += imageTag
			})
			
			let tag = '<div class="idx">' + dto.IDX + '</div>'			
			tag += '<div class="users_idx">' + dto.USERS_IDX + '</div>'			
			tag += '<div><pre>' + dto.CONTENT + '</pre></div>'
			tag += '<div>' + dto.LOCATION + '</div>'
			tag += '<div>' + dto.VIEWS + '</div>'			
			
			post_content.innerHTML += tag
			modal.style.display = 'block'
			modal_content.style.display = 'flex'			
			modal_overlay.style.display = 'block'

			if(img_size == 1) {
				left.style.display = 'none'
				right.style.display = 'none'
			}
			else {
				left.style.display = 'none'
				right.style.display = 'block'
			}
			
		})		
	}	
	
	left.onclick = leftHandler
	right.onclick = rightHandler	
	
	function leftHandler() {
		const images = document.querySelector('.images')
		const length = +images.querySelectorAll('div.image').length
		const index = +images.getAttribute('index')
		console.log(index, length)
		images.style.transitionDuration = '0.5s'
		
		if(index > 0) {
			images.setAttribute('index', index - 1)
			images.style.left = (+images.style.left.replace('px', '') + 700) + 'px' 
		}
		
		if(index >= 0 && index <= length - 1) {
			right.style.display = 'block'
		}
		
		if(index <= 1) {
			left.style.display = 'none'
		}				
	}
	
	function rightHandler() {
		const images = document.querySelector('.images')
		const length = +images.querySelectorAll('div.image').length
		const index = +images.getAttribute('index')
		console.log(index, length)
		images.style.transitionDuration = '0.5s'
		
		if(index >= 0 && index <= length - 1) {
			left.style.display = 'block'
		}
	
		if(index < length - 1) {
			images.setAttribute('index', index + 1)
			images.style.left = (+images.style.left.replace('px', '') - 700) + 'px' 
		}
		
		if(index + 1 >= length - 1) {
			right.style.display = 'none'
		}
				
	}
	
	function leftBtnHandler(event) {
		console.log(event.target.parentNode.parentNode)
		const eventValue = event.target.parentNode.parentNode
		const left_btn = eventValue.querySelector('.left_btn')
		const right_btn = eventValue.querySelector('.right_btn')
		const imagesBox = eventValue.querySelector('.images-box')
		const length = +imagesBox.querySelectorAll('div.image-box').length
		const index = +imagesBox.getAttribute('index')
		console.log(index, length)
		imagesBox.style.transitionDuration = '0.5s'
		
		if(index > 0) {
			imagesBox.setAttribute('index', index - 1)
			imagesBox.style.left = (+imagesBox.style.left.replace('px', '') + 470) + 'px' 
		}
		
		if(index >= 0 && index <= length - 1) {
			right_btn.style.display = 'block'
		}
		
		if(index <= 1) {
			left_btn.style.display = 'none'
		}				
	}
	
	function rightBtnHandler(event) {
		console.log(event.target.parentNode.parentNode)
		const eventValue = event.target.parentNode.parentNode
		const left_btn = eventValue.querySelector('.left_btn')
		const right_btn = eventValue.querySelector('.right_btn')
		const imagesBox = eventValue.querySelector('.images-box')
		const length = +imagesBox.querySelectorAll('div.image-box').length
		const index = +imagesBox.getAttribute('index')
		console.log(index, length)
		imagesBox.style.transitionDuration = '0.5s'
		
		if(index >= 0 && index <= length - 1) {
			left_btn.style.display = 'block'
		}
	
		if(index < length - 1) {
			imagesBox.setAttribute('index', index + 1)
			imagesBox.style.left = (+imagesBox.style.left.replace('px', '') - 470) + 'px' 
		}
		
		if(index + 1 >= length - 1) {
			right_btn.style.display = 'none'
		}
				
	}
</script>



</body>
</html>