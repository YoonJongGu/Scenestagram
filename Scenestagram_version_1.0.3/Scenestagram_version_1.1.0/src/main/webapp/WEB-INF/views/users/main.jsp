<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../header.jsp" %>

<style>

/* 댓글박스 */
textarea {
    background-color: #262626;
    color: #fff;
}

body {
    background-color: #0f0f0f;
}
div {
    /* height: 7170.96px; */
    /* width: 998.667px; */
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
div.screen {
    display: flex;
    height: 100vh;
    /* flex-direction: column; */
    /* position: relative; */
    /* z-index: 0;  */
    
    /* flex-wrap: wrap; */
    flex-flow: column;
}
/*푸터*/
.footer{
	margin-left: 300px;
    text-align: center;
    width: 600px;
}

/* 왼쪽메뉴 */
div.left-menu {
    position: fixed;
    left: 0;
    top: 0;
    height: 100vh;
    width: 342px;
    padding: 8px 12px 20px;
    border-right: 1px solid rgb(38, 38, 38);
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




div.home-main {
    /* position: relative; */
    display: flex;            
	height: 100vh;
    /* 나중에 수정 */
    background-color: #000;
    
}



div.main{
    display: block;
    margin-left: 245px;
    min-height: auto;
    min-width: auto;
    
    /* max-width: 853px; */
    
}

div.home-feed {
    display: flex;
    
    width: 80%;
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

/*스크롤 적용*/
#home-feed {
	height: 100vh;
	overflow-y: scroll;
}
</style>
</head>
<body onload="loadHandler(); scrollHandler();">

<div class="screen">


        <!-- 가운데 메인 -->
        <div class="home-main">
            <div class="main">
                <div style="display: block;">
                    <div class="home-feed" id="home-feed" offset="0">
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
                                        <img src="${cpath}/resources/img/insta-profile.jpg" alt="">
                                    </div>
                                    <div class="id-box">
                                        <a href="">
                                            <div>${login.name }</div>
                                        </a>
                                        <span class="id">${login.nick_name }</span>

                                    </div>
                                </div>
                                <div class="account-btn">계정전환버튼</div>
                                <!-- -메인에서 내 프로필- Lorem ipsum dolor sit, amet consectetur adipisicing elit. Animi, ipsam.
                                Fuga hic,
                                corporis laudantium consequatur nihil iusto. Atque, reiciendis, quis obcaecati modi est,
                                quod alias molestias laboriosam odio voluptatum fugit. -->
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


<!--  추천인 스크립트 -->
<script>
   const recofri = document.getElementById('recommend-friend')
   
   function loadHandler() {
      const url = '${cpath}/countFollowing/${login.idx}'
      fetch(url)
      .then(resp => resp.text())
      .then(text => {
      console.log(text)
      
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
       console.log(json)
         json.forEach(dto => {
            console.log(dto.nick_name)
            console.log(dto.idx)
            if(friend5Cut != 5) {      // 리스트 다 불러온 다음 강제로 5명컷 낸거라 나쁜 코드입니다.
               let tag = ''
               tag += '<div class="flex">'
               tag += '<a href="${cpath}/users/viewDetail/' + dto.idx + '"><div class="img-box">'
               tag += '<img class="" src="${cpath}/resources/img/insta-profile.jpg">추천회원img</img>'
               tag += '</div></a>'
               tag += '<a href="${cpath}/users/viewDetail/' + dto.idx + '"><div>' + dto.nick_name + '</div></a>'
               tag += '<div>팔로우</div>'
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
      })
      
   }
   
//   document.body.onload = loadHandler
    //recommendHandler()

</script>

    
<!-- 타임라인 게시글 스크롤 이벤트 -->
<script type="text/javascript">
	const post = document.querySelector('#post')
  const homefeed = document.getElementById('home-feed')        		
  	function scrollHandler(event) {	
  		const offset = +homefeed.getAttribute('offset')
          console.log(offset)

          const cur = homefeed.scrollTop + homefeed.clientHeight
          console.log(cur)
          const flag = homefeed.scrollHeight * 0.95 <= cur && cur <= homefeed.scrollHeight * 1.95

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
                      tag+= '<div class="i-col-0 id-box">'
                      tag+= '<span class="id">'+dto.nick_name+'</span>'
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
                      tag+= '<img src="${cpath}/resources/img/'+dto.file_name+'" alt="">'
                      tag+= '</div>'
                      tag+= '</div>'
                      tag+= '<div class="insta-post-item-btn-box">'
                      tag+= '<ul class="i-col-0 insta-post-item-btn-ul">'
                      tag+= '<li>'
                      tag+= '<a href="">'
                      tag+= '<svg aria-label="좋아요" class="_ab6-" color="#fafafa" fill="#fafafa"'
                      tag+= ' height="24" role="img" viewBox="0 0 24 24" width="24">'
                      tag+= '<path'
                      tag+= ' d="M16.792 3.904A4.989 4.989 0 0 1 21.5 9.122c0 3.072-2.652 4.959-5.197 7.222-2.512 2.243-3.865 3.469-4.303 3.752-.477-.309-2.143-1.823-4.303-3.752C5.141 14.072 2.5 12.167 2.5 9.122a4.989 4.989 0 0 1 4.708-5.218 4.21 4.21 0 0 1 3.675 1.941c.84 1.175.98 1.763 1.12 1.763s.278-.588 1.11-1.766a4.17 4.17 0 0 1 3.679-1.938m0-2a6.04 6.04 0 0 0-4.797 2.127 6.052 6.052 0 0 0-4.787-2.127A6.985 6.985 0 0 0 .5 9.122c0 3.61 2.55 5.827 5.015 7.97.283.246.569.494.853.747l1.027.918a44.998 44.998 0 0 0 3.518 3.018 2 2 0 0 0 2.174 0 45.263 45.263 0 0 0 3.626-3.115l.922-.824c.293-.26.59-.519.885-.774 2.334-2.025 4.98-4.32 4.98-7.94a6.985 6.985 0 0 0-6.708-7.218Z">'
                      tag+= '</path>'
                      tag+= '</svg>'
                      tag+= '</a>'
                      tag+= '</li>'
                      tag+= '<li>'
                      tag+= '<a href="">'
                      tag+= '<svg aria-label="댓글 달기" class="_ab6-" color="#fafafa" fill="#fafafa"'
                      tag+= ' height="24" role="img" viewBox="0 0 24 24" width="24">'
                      tag+= '<path d="M20.656 17.008a9.993 9.993 0 1 0-3.59 3.615L22 22Z"'
                      tag+= ' fill="none" stroke="currentColor" stroke-linejoin="round"'
                      tag+= ' stroke-width="2"></path>'
                      tag+= '</svg>'
                      tag+= '</a>'
                      tag+= '</li>'
                      tag+= '<li>'
                      tag+= '<a href="">'
                      tag+= '<svg aria-label="게시물 공유" class="_ab6-" color="#fafafa"'
                      tag+= ' fill="#fafafa" height="24" role="img" viewBox="0 0 24 24"'
                      tag+= ' width="24">'
                      tag+= '<line fill="none" stroke="currentColor" stroke-linejoin="round"'
                      tag+= ' stroke-width="2" x1="22" x2="9.218" y1="3" y2="10.083">'
                      tag+= '</line>'
                      tag+= '<polygon fill="none"'
                      tag+= ' points="11.698 20.334 22 3.001 2 3.001 9.218 10.084 11.698 20.334"'
                      tag+= ' stroke="currentColor" stroke-linejoin="round"'
                      tag+= ' stroke-width="2"></polygon>'
                      tag+= '</svg>'
                      tag+= '</a>'
                      tag+= '</li>'
                      tag+=' <li class="bookmark">'
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
                      tag+='<p class="good">좋아요 99개</p>'
                      tag+='<p class="post-comment">'+dto.content+'</p>'
                      tag+='<p class="post-reply">여기는 댓글보여주는곳</p>'
                      tag+='<textarea aria-label="댓글 달기..." placeholder="댓글 달기..."></textarea>'
                      tag+='</div>'
                      tag+='</div>'
                      post.innerHTML += tag
                      post.setAttribute('offset', offset + 10)
                  })
              })
          }
  	}
//	window.onload = scrollHandler
	homefeed.onscroll = scrollHandler
			                       	
</script>



</body>
</html>