<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   
<style>





/* Default */
/* 모든속성에 적용. 레이아웃잡을때 사용함 */
*{
    /* border: 1px dashed red; */
    margin: 1px;
    padding: 0;
    box-sizing: border-box;
    color: #fff;
}

/* ul, li태그에 기본으로 스타일을 안주기 */
ul,li{list-style: none;}

/* a태그 밑줄 없애기 */
a {text-decoration: none;}

/* 댓글박스 */
textarea {
    background-color: #262626;
    color: #fff;
    
}


body {
    background-color: #0f0f0f;
}
div {
    min-height: auto;
    min-width: auto;
    display: block;
    margin-top: 5px;
    margin-bottom: 19px;
   
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
    /* background-color: #ddd; */
    border-radius: 24px;
}

/* 위와 같음. 더보기는 다른 박스로 묶여있기 때문에 따로 적어주었다 */
/* 추후에 수정할 수도 있음 */
div.left-menu > .i-col-0:hover {
    /* background-color: #ddd; */
    background-color: rgb(18,18,18);
    border-radius: 24px;
    cursor: pointer;
}


/* img 기본틀 */
div.img-box .img {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 100%;
}

/* 전체 화면 */

div.home-feed {
    display: flex;
    
    width: 70%;
    margin: auto;
    /* width: 853px; */
    
}

/* 스토리, 게시글 */
div.home-feed-left {
    display: block;
    min-width: auto;
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
div.insta-main-top-ul-item .img-box {
    width: 66px;
    height: 66px;
    border-radius: 50%;
    overflow: hidden;
    border: 2px solid #1cd14f;
    position: relative;
}

div.insta-main-top-ul-item .img-box img {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 100%;
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
    /* justify-content: space-between; */
    position: relative;
    padding: 12px 0;
}
/* div.insta-item-top > div {
    display: flex;
} */

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
    position: relative;
    height: 0;
    padding-bottom: 74.7%;
    overflow: hidden;
    border-radius: 4px;
}

/* 이미지를 가운데에 배치하는 작업 */
div.insta-post-item-middle .img-box img {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 100%;
}

/* 좋아요, 댓글, DM버튼 ...  */
div.insta-post-item-btn-box {
   
    
    padding: 8px 0 10px;
    
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

div.home-feed-right {min-width: 360px;}


/* 피드 오른쪽 top 마이프로필 */
div.home-feed-right-myprofile {
    display: flex;
    justify-content: space-between;
}
div.home-feed-right-myprofile .img-box {

    width: 66px;
    height: 66px;
    border-radius: 50%;
    overflow: hidden;
    border: 2px solid #1cd14f;
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

/* 추천회원 프로필 img / 뷰디테일 프사*/ 
div.flex > .img-box {
    width: 200px;
    height: 200px;
    border-radius: 50%;
    overflow: hidden;
    border: 2px solid #1cd14f;
    position: relative;
    
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
	width: 100%;
}

div.insta-post-item-middle > * {
    width: 300px;
    height: 300px;
    
}


/* 사이드 프로필 미니 프사*/ 
.miniImg-box {
    width: 50px;
    height: 50px;
    border-radius: 50%;
    overflow: hidden;
    border: 2px solid #1cd14f;
    position: relative;
    
}

.modal {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 1000;
        }
        .modal .bg {
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.6);
        }
        .modalBox {
            position: absolute;
            background-color: #fff;
            border-radius: 2%;
            width: 400px;
            height: auto;
            padding: 0px;
        }
        .modalBox button {
            display: block;
            width: 80px;
            margin: 0 auto;
        }
        .hidden {
            display: none;
        }
        .modalBox div {
           color: black;
            text-align: center;
            padding-top: 20px;
            padding-bottom: 20px;
        }
        .modalBox > hr {
            margin-top: 0px;
            margin-bottom: 0px;
        }
        .modalBox > div:hover {
            cursor: pointer;
        }


#imgLine {
   flex-flow: wrap;
   width: 100%
}

div.home-main {
    display: flex;            
    width: 100%;
}
div.screen {
    display: flex;
    width: 83%;
}

.all_wrap{
	display: flex;
    justify-content: end;
    background-color: #000;
    margin-bottom: 110px;
    margin: 0;
}
.main_wrap{
    width: 80%;
    display: flex;
    color: white;
    padding: 0;
    margin: 0;
    display: flex;
    justify-content: center;
}
div.main{
   	width: 100%;
    min-height: auto;
    min-width: auto;
}
.view_detail_top{
	width: 100%;
}

.top_profile_img > img{
	width: 150px;
    border-radius: 80px;
} 
.top_profile_img{
	width: 40%;
    display: flex;
    justify-content: center;
    align-items: center;
}
.view_detail_top_right_box{
	width: 70%;
}
.right_top{
	display: flex;
	align-items: center;
	
}
.right_top_middle{
	display: flex;
	
}
.text-box{
	font-size: 20px;
    margin-right: 24px;
    font-weight: 500;
    padding-top: 14px;
}
#followBtn{
	height: 32px;
    width: 98px;
    border-radius: 11px;
    margin-right: 10px;
    font-weight: 600;
    color: #fff;
    background-color: #1877f2;
}
.go_chat{
	background-color: #fff;
    color: #000;
    width: 120px;
    height: 30px;
    border-radius: 9px;
    text-align: center;
    padding: 3px;
    margin: 0;
    font-weight: 600;
}
.right_top_middle *{
	font-size: 16px;
	font-weight: 500;
}
.right_top_middle > div{
	margin-right: 47px;
}
.right_top_name{
	font-weight: 500;
}
.right_top_content{
	font-weight: 100;
    font-size: 14px;
}
.wrap_middle{
	text-align: center;
    border-top: 1px solid #aaa;
    padding-top: 20px;
}



.post-modal {
	position: fixed;
    z-index: 3;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgba(0, 0, 0, 0.8);
    display: flex;
    justify-content: center;
    align-items: center;
}
.post-modal_backgound{
	background-color: #000;
    opacity: 0.1;
    width: 100%;
    height: 100vh;
    position: absolute;
    z-index: 4;
}
.post-modal_content{
	width: 86%;
    height: 90%;
    z-index: 5;
    position: absolute;
    display: flex;
    background-color: #000;
}
.post-modal_content_left_img > img{
	width: 100%;
	height: 100%;
} 
.post-modal_content_left_img{
	width: 60%;
}
.post-modal_content_right_top{
    display: flex;
    justify-content: space-between;
    padding: 0px;
    padding-left: 20px;
    padding-top: 12px;
    height: 8%;
}
.post-modal_content_right_top img{
	width: 32px;
	border-radius: 80px;
}
.post-modal_content_right{
	height: 100%;
    width: 40%;
}
.post-modal_content_right_bottom_1 > div:first-child {
	display: flex;
    margin-top: 14px;
    margin-bottom: 6px;
}
.post-modal_content_right_cmt{
	height: 50%;
    border-top: 1px solid #888;
    border-bottom: 1px solid #888;
}
.post-modal_content_right_bottom_1 > div div{
	margin-left: 15px;
}
.post-modal_content_right_cmt_write textarea {
    width: auto;
    resize: none;
    width: 100%;
    border: none;
    background-color: #000;
    outline: none;
    height: 30px;
}
.post-modal_content_right_cmt_write > div:first-child {
	width: 86%;
	
}
.post-modal_content_right_bottom_1 > div:nth-child(2) {
	margin-left: 15px;	
}
.post-modal_content_right_cmt_write{
    display: flex;
    border-top: 1px solid #888;
    padding: 0px;
    padding-left: 16px;
    padding-top: 16px;
}
.post-modal_content_right_bottom_1{
	margin-bottom: 16px;
}
.scroll::-webkit-scrollbar{
	display: none;
}

</style>
</head>
<body onload="followCntHandler(); checkFollowHandler(); optionCheckHandler(); scrollHandler();">
<div class="all_wrap">
	<div class="main_wrap">
		<div class="screen">
	        <!-- 가운데 메인 -->
	        <div class="home-main" offset="0">
	            <div class="main">
	                <div>
	                    <div class="mypage">
	                        <div>
	                            <!-- mypage 프로필 -->
	                            <div class="flex view_detail_top">
	                                    <!--mapge 프로필사진-->
	                                    <div class="top_profile_img">
                                             <img src="${cpath}/resources/img/insta-profile.jpg">
                                        </div>
                                         <div class="view_detail_top_right_box">
                                         	<div class="right_top">
                                                 <div class="text-box">${dto.nick_name }</div>
                                                 <button id="followBtn"></button>
                                                 <div class="go_chat">메시지 보내기</div>
                                                 <div>
		                                              <span class="option hidden">
		                                                 <svg aria-label="옵션" class="_ab6-" color="rgb(245, 245, 245)" fill="rgb(245, 245, 245)" height="24" role="img" viewBox="0 0 24 24" width="24"><circle cx="12" cy="12" fill="none" r="8.635" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></circle><path d="M14.232 3.656a1.269 1.269 0 0 1-.796-.66L12.93 2h-1.86l-.505.996a1.269 1.269 0 0 1-.796.66m-.001 16.688a1.269 1.269 0 0 1 .796.66l.505.996h1.862l.505-.996a1.269 1.269 0 0 1 .796-.66M3.656 9.768a1.269 1.269 0 0 1-.66.796L2 11.07v1.862l.996.505a1.269 1.269 0 0 1 .66.796m16.688-.001a1.269 1.269 0 0 1 .66-.796L22 12.93v-1.86l-.996-.505a1.269 1.269 0 0 1-.66-.796M7.678 4.522a1.269 1.269 0 0 1-1.03.096l-1.06-.348L4.27 5.587l.348 1.062a1.269 1.269 0 0 1-.096 1.03m11.8 11.799a1.269 1.269 0 0 1 1.03-.096l1.06.348 1.318-1.317-.348-1.062a1.269 1.269 0 0 1 .096-1.03m-14.956.001a1.269 1.269 0 0 1 .096 1.03l-.348 1.06 1.317 1.318 1.062-.348a1.269 1.269 0 0 1 1.03.096m11.799-11.8a1.269 1.269 0 0 1-.096-1.03l.348-1.06-1.317-1.318-1.062.348a1.269 1.269 0 0 1-1.03-.096" fill="none" stroke="currentColor" stroke-linejoin="round" stroke-width="2"></path></svg>
		                                             </span>
                                        		 </div>
                                        	</div>
                                             <div class="right_top_middle">
                                                 <div><span>게시물</span><span id="postCnt"></span></div>
                                                 <div><span>팔로워</span><span id="followerCnt"></span></div>
                                                 <div><span>팔로잉</span><span id="followingCnt"></span></div>
                                             </div>
                                             <div class="right_top_name">${dto.name }</div>
                                             <div class="right_top_content">${dto.introduce }</div>
                                         </div>
	                            </div>
	                           	<!-- mypage 프로필 end-->
	                            <div class="wrap_middle">
	                                게시물
	                            </div>
	                            	<div class="list">
		                            	<div class="flex items">
		                                </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	   </div>
   </div>
 </div>
      <!-- post디테일 모달 -->

<div class="post-modal">
	<div class="post-modal_backgound"></div>

   	<div class="post-modal_content">
   	
   			<!-- 좌측 사진칸 -->
	       <div class="post-modal_content_left_img"><img src="${cpath }/resources/img/test2.png"></div>
	       
	       <!-- 우측 컨텐츠 -->
	       <div class="post-modal_content_right">
	       		<!-- 우측 컨텐츠  탑-->
	       		<div class="post-modal_content_right_top" >
			          <div><img src="${cpath }/resources/img/userImg.jpg"></div>
			          <div><svg aria-label="옵션 더 보기" class="_ab6-" color="rgb(245, 245, 245)" fill="rgb(245, 245, 245)" height="24" role="img" viewBox="0 0 24 24" width="24"><circle cx="12" cy="12" r="1.5"></circle><circle cx="6" cy="12" r="1.5"></circle><circle cx="18" cy="12" r="1.5"></circle></svg></div>
	       	   </div>
	       	  <!-- 우측 컨텐츠  탑 end-->
		
			   <div class="post-modal_content_right_cmt">
		             <div>
	                
		             </div>		
	           </div>
	           
	           
		       <div class="post-modal_content_right_bottom_1">
		       		<div>
			          <div><svg class="post_like" aria-label="좋아요" class="_ab6-" color="rgb(245, 245, 245)" fill="rgb(245, 245, 245)" height="24" role="img" viewBox="0 0 24 24" width="24"><path d="M16.792 3.904A4.989 4.989 0 0 1 21.5 9.122c0 3.072-2.652 4.959-5.197 7.222-2.512 2.243-3.865 3.469-4.303 3.752-.477-.309-2.143-1.823-4.303-3.752C5.141 14.072 2.5 12.167 2.5 9.122a4.989 4.989 0 0 1 4.708-5.218 4.21 4.21 0 0 1 3.675 1.941c.84 1.175.98 1.763 1.12 1.763s.278-.588 1.11-1.766a4.17 4.17 0 0 1 3.679-1.938m0-2a6.04 6.04 0 0 0-4.797 2.127 6.052 6.052 0 0 0-4.787-2.127A6.985 6.985 0 0 0 .5 9.122c0 3.61 2.55 5.827 5.015 7.97.283.246.569.494.853.747l1.027.918a44.998 44.998 0 0 0 3.518 3.018 2 2 0 0 0 2.174 0 45.263 45.263 0 0 0 3.626-3.115l.922-.824c.293-.26.59-.519.885-.774 2.334-2.025 4.98-4.32 4.98-7.94a6.985 6.985 0 0 0-6.708-7.218Z"></path></svg></div>
			          <div><svg aria-label="댓글 달기" class="_ab6-" color="rgb(245, 245, 245)" fill="rgb(245, 245, 245)" height="24" role="img" viewBox="0 0 24 24" width="24"><path d="M20.656 17.008a9.993 9.993 0 1 0-3.59 3.615L22 22Z" fill="none" stroke="currentColor" stroke-linejoin="round" stroke-width="2"></path></svg></div>
			        </div>
			        <div>좋아요 ${likeCount }개</div>
			        <div></div>
		       </div>
	           
              <div class="post-modal_content_right_cmt_write">
	          		<div><textarea class="scroll" placeholder="댓글 달기..."></textarea></div>
	          		<div>게시</div>
	          </div>
          </div>
          <!-- 우측 컨텐츠 end -->
    </div>
</div>
<!-- post디테일 모달 end-->  
	<!-- 모달 -->           
	<div class="modal hidden">
         <div class="bg"></div>
       	 <div class="modalBox">
             <a href="${cpath }/users/infoModify_replacePw"><div>비밀번호 변경</div></a>
             <hr>
             <a href="${cpath }/users/logout"><div>로그아웃</div></a>
             <hr>
             <div class="closeBtn">취소</div>
         </div>
    </div>
    
    <!-- 스크롤 -->
<script>
   const items = document.querySelector('.items')
   const main_wrap = document.querySelector('.main_wrap')

   function scrollHandler() {   
      const offset = +main_wrap.getAttribute('offset')
      const cur = main_wrap.scrollTop + main_wrap.clientHeight
      console.log(main_wrap.scrollTop, main_wrap.clientHeight)
      const flag = (main_wrap.scrollHeight * 0.95 <= cur && cur <= main_wrap.scrollHeight * 1.05) || offset == 0
      console.log(cur, flag)
      if(flag) {
         fetch('${cpath}/bringPost/${dto.idx}/' + offset)
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

   
// window.onload = scrollHandler
main_wrap.onscroll = scrollHandler


</script>
    
    <script>
    const imgLine = document.getElementById('imgLine') // 게시물의 1번째 이미지가 보여질 게시글 장소
    const followBtn = document.getElementById('followBtn') // 팔로우 팔로잉 프로필 편집 버튼 (3개 돌려쓰기)
    const postCnt = document.getElementById('postCnt') // 게시물 카운트
    const followerCnt = document.getElementById('followerCnt') // 팔로워 카운트
    const followingCnt = document.getElementById('followingCnt') // 팔로잉 카운트
    const option = document.querySelector('.option   ')   // 옵션(톱니바퀴)
    console.log(option)
    
    function optionCheckHandler() {
       if('${dto.idx}'=='${login.idx}') {
           option.classList.remove('hidden')
        }
    }

    function checkFollowHandler() {
       if('${dto.idx}' == '${login.idx}') {
             followBtn.innerHTML = '<a href="${cpath}/users/infoModify">프로필 편집</a>'
             followBtn.classList.add('modiPro')   // 나중에 프로필 편집 버튼에 속성 추가가 필요할까?
          }
       else {
          fetch('${cpath}/findFollow/${dto.idx}/${login.idx}')
              .then(resp => resp.text())
              .then(text => {
                 console.log(text)
                 if(text == 1) {
                    followBtn.innerText = '팔로잉'
                    followBtn.classList.add('unfollow')
                 } 
                 else {
                    followBtn.innerText = '팔로우'
                    followBtn.classList.remove('unfollow')
                 }
              })
       }
    }
    
    function followCntHandler(event) {
        fetch('${cpath}/countFollowing/${dto.idx}')
        .then(resp => resp.text())
        .then(text => {
           followingCnt.innerText = text
        })
        
        fetch('${cpath}/countFollower/${dto.idx}')
        .then(resp => resp.text())
        .then(text => {
           followerCnt.innerText = text
        })
        // 게시물 수 체크
        fetch('${cpath}/countPost/${dto.idx}')
        .then(resp => resp.text())
        .then(text => {
         postCnt.innerText = text  
        })
     }
    
    function followHandler(event) {
       console.log(event.target.value)
       if(event.target.innerHTML == '팔로우') {
          fetch('${cpath}/follow/${dto.idx}/${login.idx}')
          .then(resp => resp.text())
          .then(text => {
             
             if(text != 0) {
                event.target.innerText = '팔로잉'
                event.target.classList.add('unfollow')
                location.reload()
             }
          })
       }
       else if(event.target.innerHTML == '팔로잉') {
          fetch('${cpath}/unfollow/${dto.idx}/${login.idx}')
          .then(resp => resp.text())
          .then(text => {
             
             if(text != 0) {
                event.target.innerText = '팔로우'
                event.target.classList.remove('unfollow')
                location.reload()
             }
          })
       }
       else {
          // 이거 안해주면 프로필 편집 버튼 눌렀을 때 위에 else if 애들 손봐줘야 됨
       }
    }
    
    function bringPostHandler() {
       fetch('${cpath}/bringPost/${dto.idx}')
       .then(resp => resp.json())
       .then(json => {
         json.forEach(dto => {

            let imgTag = ''
            imgTag += '<div class="insta-post-item-middle">'
            imgTag += '<div class="img-box" style="width: 300px; height: 300px;">'
            imgTag += '<a href="${cpath}/post/detail/' + dto.post_idx + '"><img src="${cpath}/upload/' + dto.file_name + '"></a>'
            imgTag += '</div>'
            imgTag += '</div>'
            imgLine.innerHTML += imgTag
            
         })
       })
    }
    
//     옵션 모달
    const open = () => {
        document.querySelector(".modal").classList.remove("hidden")
    }
    const close = () => {
        document.querySelector(".modal").classList.add("hidden")
    }
    
    document.querySelector(".option").addEventListener("click", open);
    document.querySelector(".closeBtn").addEventListener("click", close);
    document.querySelector(".bg").addEventListener("click", close);
   

//        document.body.onload = followCntHandler 
//     document.body.onload = checkFollowHandler 이 주석 처리한 코드. 한 문서에 온로드 2개 이상 사용 불가능 한데 <body> 태그에 체인 거는 방식으로 사용할 수 있게 만듬
//      document.body.onload = bringPostHandler
//      document.body.onload = optionCheckHandler
    followBtn.onclick = followHandler
</script>

</body>
</html>