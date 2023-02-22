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
</style>
</head>
<body>

<div class="screen">


        <!-- 가운데 메인 -->
        <div class="home-main">
            <div class="main">
                <div style="display: block;">
                    <div class="home-feed">
                        <div class="home-feed-left">
                            <!-- 스토리-->
                            <div class="stoty">
                            </div>
                            <!-- 게시물 (POST) -->
                            <div class="post">
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
                                            <div>서영찬</div>
                                        </a>
                                        <span class="id">cha_ni__</span>

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
                                    <div>회원님을 위한 추천</div>
                                    <div>모두보기</div>
                                </div>
                                <div class="flex">
                                    <div class="img-box">
                                        <img class="" src="${cpath}/resources/img/insta-profile.jpg">추천회원img</img>

                                    </div>
                                    <div>
                                        <div>추천회원이름</div>
                                        <div>rok1212님이 팔로우 합니다</div>
                                    </div>
                                    <div>팔로우btn</div>
                                </div>

                                <div class="flex">
                                    <div class="img-box">
                                        <img class="" src="${cpath}/resources/img/insta-profile.jpg">추천회원img</img>

                                    </div>
                                    <div>
                                        <div>추천회원이름</div>
                                        <div>rok1212님이 팔로우 합니다</div>
                                    </div>
                                    <div>팔로우btn</div>
                                </div>

                                <div class="flex">
                                    <div class="img-box">
                                        <img class="" src="${cpath}/resources/img/insta-profile.jpg">추천회원img</img>

                                    </div>
                                    <div>
                                        <div>추천회원이름</div>
                                        <div>rok1212님이 팔로우 합니다</div>
                                    </div>
                                    <div>팔로우btn</div>
                                </div>

                                <div class="flex">
                                    <div class="img-box">
                                        <img class="" src="${cpath}/resources/img/insta-profile.jpg">추천회원img</img>

                                    </div>
                                    <div>
                                        <div>추천회원이름</div>
                                        <div>rok1212님이 팔로우 합니다</div>
                                    </div>
                                    <div>팔로우btn</div>
                                </div>

                            </div>
                        </div>
                        <!-- 메인피드의 오른쪽 마이프로필 및 추천 end-->
                    </div>
                </div>
            </div>
        </div>
        <!-- 가운데 메인 end-->

</div>
    




</body>
</html>