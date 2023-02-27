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
    /* padding: 2px; */
    box-sizing: border-box;
    /* display: flex; */
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
    /* height: 7170.96px; */
    /* width: 998.667px; */
/*     background-color: #0f0f0f; */
    min-height: auto;
    min-width: auto;
    display: block;
    margin-top: 5px;
    margin-bottom: 19px;
    margin-right: 20px;
   
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
    /* flex-direction: column; */
    /* position: relative; */
    /* z-index: 0;  */
    
    /* flex-wrap: wrap; */
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

    /* 나중에 수정
    background-color: lightpink; */
    
}



div.main{
    display: block;
    margin-left: 333px;
    min-height: auto;
    min-width: auto;
    
    /* max-width: 853px; */
    
}

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

#imgLine {
   flex-flow: wrap;
   width: 1200px;
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

</style>
</head>
<body onload="followCntHandler(); checkFollowHandler(); bringPostHandler(); optionCheckHandler();">

<div class="screen">

        <!-- 왼쪽 메뉴 -->
        <div class="left-menu">
            <div class="menu-top">
                <div class="logo">
                    <a href=""><svg aria-label="Instagram" class="_ab6-" color="#fafafa" fill="#fafafa" height="29"
                            role="img" viewBox="32 4 113 32" width="103">
                            <path clip-rule="evenodd"
                                d="M37.82 4.11c-2.32.97-4.86 3.7-5.66 7.13-1.02 4.34 3.21 6.17 3.56 5.57.4-.7-.76-.94-1-3.2-.3-2.9 1.05-6.16 2.75-7.58.32-.27.3.1.3.78l-.06 14.46c0 3.1-.13 4.07-.36 5.04-.23.98-.6 1.64-.33 1.9.32.28 1.68-.4 2.46-1.5a8.13 8.13 0 0 0 1.33-4.58c.07-2.06.06-5.33.07-7.19 0-1.7.03-6.71-.03-9.72-.02-.74-2.07-1.51-3.03-1.1Zm82.13 14.48a9.42 9.42 0 0 1-.88 3.75c-.85 1.72-2.63 2.25-3.39-.22-.4-1.34-.43-3.59-.13-5.47.3-1.9 1.14-3.35 2.53-3.22 1.38.13 2.02 1.9 1.87 5.16ZM96.8 28.57c-.02 2.67-.44 5.01-1.34 5.7-1.29.96-3 .23-2.65-1.72.31-1.72 1.8-3.48 4-5.64l-.01 1.66Zm-.35-10a10.56 10.56 0 0 1-.88 3.77c-.85 1.72-2.64 2.25-3.39-.22-.5-1.69-.38-3.87-.13-5.25.33-1.78 1.12-3.44 2.53-3.44 1.38 0 2.06 1.5 1.87 5.14Zm-13.41-.02a9.54 9.54 0 0 1-.87 3.8c-.88 1.7-2.63 2.24-3.4-.23-.55-1.77-.36-4.2-.13-5.5.34-1.95 1.2-3.32 2.53-3.2 1.38.14 2.04 1.9 1.87 5.13Zm61.45 1.81c-.33 0-.49.35-.61.93-.44 2.02-.9 2.48-1.5 2.48-.66 0-1.26-1-1.42-3-.12-1.58-.1-4.48.06-7.37.03-.59-.14-1.17-1.73-1.75-.68-.25-1.68-.62-2.17.58a29.65 29.65 0 0 0-2.08 7.14c0 .06-.08.07-.1-.06-.07-.87-.26-2.46-.28-5.79 0-.65-.14-1.2-.86-1.65-.47-.3-1.88-.81-2.4-.2-.43.5-.94 1.87-1.47 3.48l-.74 2.2.01-4.88c0-.5-.34-.67-.45-.7a9.54 9.54 0 0 0-1.8-.37c-.48 0-.6.27-.6.67 0 .05-.08 4.65-.08 7.87v.46c-.27 1.48-1.14 3.49-2.09 3.49s-1.4-.84-1.4-4.68c0-2.24.07-3.21.1-4.83.02-.94.06-1.65.06-1.81-.01-.5-.87-.75-1.27-.85-.4-.09-.76-.13-1.03-.11-.4.02-.67.27-.67.62v.55a3.71 3.71 0 0 0-1.83-1.49c-1.44-.43-2.94-.05-4.07 1.53a9.31 9.31 0 0 0-1.66 4.73c-.16 1.5-.1 3.01.17 4.3-.33 1.44-.96 2.04-1.64 2.04-.99 0-1.7-1.62-1.62-4.4.06-1.84.42-3.13.82-4.99.17-.8.04-1.2-.31-1.6-.32-.37-1-.56-1.99-.33-.7.16-1.7.34-2.6.47 0 0 .05-.21.1-.6.23-2.03-1.98-1.87-2.69-1.22-.42.39-.7.84-.82 1.67-.17 1.3.9 1.91.9 1.91a22.22 22.22 0 0 1-3.4 7.23v-.7c-.01-3.36.03-6 .05-6.95.02-.94.06-1.63.06-1.8 0-.36-.22-.5-.66-.67-.4-.16-.86-.26-1.34-.3-.6-.05-.97.27-.96.65v.52a3.7 3.7 0 0 0-1.84-1.49c-1.44-.43-2.94-.05-4.07 1.53a10.1 10.1 0 0 0-1.66 4.72c-.15 1.57-.13 2.9.09 4.04-.23 1.13-.89 2.3-1.63 2.3-.95 0-1.5-.83-1.5-4.67 0-2.24.07-3.21.1-4.83.02-.94.06-1.65.06-1.81 0-.5-.87-.75-1.27-.85-.42-.1-.79-.13-1.06-.1-.37.02-.63.35-.63.6v.56a3.7 3.7 0 0 0-1.84-1.49c-1.44-.43-2.93-.04-4.07 1.53-.75 1.03-1.35 2.17-1.66 4.7a15.8 15.8 0 0 0-.12 2.04c-.3 1.81-1.61 3.9-2.68 3.9-.63 0-1.23-1.21-1.23-3.8 0-3.45.22-8.36.25-8.83l1.62-.03c.68 0 1.29.01 2.19-.04.45-.02.88-1.64.42-1.84-.21-.09-1.7-.17-2.3-.18-.5-.01-1.88-.11-1.88-.11s.13-3.26.16-3.6c.02-.3-.35-.44-.57-.53a7.77 7.77 0 0 0-1.53-.44c-.76-.15-1.1 0-1.17.64-.1.97-.15 3.82-.15 3.82-.56 0-2.47-.11-3.02-.11-.52 0-1.08 2.22-.36 2.25l3.2.09-.03 6.53v.47c-.53 2.73-2.37 4.2-2.37 4.2.4-1.8-.42-3.15-1.87-4.3-.54-.42-1.6-1.22-2.79-2.1 0 0 .69-.68 1.3-2.04.43-.96.45-2.06-.61-2.3-1.75-.41-3.2.87-3.63 2.25a2.61 2.61 0 0 0 .5 2.66l.15.19c-.4.76-.94 1.78-1.4 2.58-1.27 2.2-2.24 3.95-2.97 3.95-.58 0-.57-1.77-.57-3.43 0-1.43.1-3.58.19-5.8.03-.74-.34-1.16-.96-1.54a4.33 4.33 0 0 0-1.64-.69c-.7 0-2.7.1-4.6 5.57-.23.69-.7 1.94-.7 1.94l.04-6.57c0-.16-.08-.3-.27-.4a4.68 4.68 0 0 0-1.93-.54c-.36 0-.54.17-.54.5l-.07 10.3c0 .78.02 1.69.1 2.09.08.4.2.72.36.91.15.2.33.34.62.4.28.06 1.78.25 1.86-.32.1-.69.1-1.43.89-4.2 1.22-4.31 2.82-6.42 3.58-7.16.13-.14.28-.14.27.07l-.22 5.32c-.2 5.37.78 6.36 2.17 6.36 1.07 0 2.58-1.06 4.2-3.74l2.7-4.5 1.58 1.46c1.28 1.2 1.7 2.36 1.42 3.45-.21.83-1.02 1.7-2.44.86-.42-.25-.6-.44-1.01-.71-.23-.15-.57-.2-.78-.04-.53.4-.84.92-1.01 1.55-.17.61.45.94 1.09 1.22.55.25 1.74.47 2.5.5 2.94.1 5.3-1.42 6.94-5.34.3 3.38 1.55 5.3 3.72 5.3 1.45 0 2.91-1.88 3.55-3.72.18.75.45 1.4.8 1.96 1.68 2.65 4.93 2.07 6.56-.18.5-.69.58-.94.58-.94a3.07 3.07 0 0 0 2.94 2.87c1.1 0 2.23-.52 3.03-2.31.09.2.2.38.3.56 1.68 2.65 4.93 2.07 6.56-.18l.2-.28.05 1.4-1.5 1.37c-2.52 2.3-4.44 4.05-4.58 6.09-.18 2.6 1.93 3.56 3.53 3.69a4.5 4.5 0 0 0 4.04-2.11c.78-1.15 1.3-3.63 1.26-6.08l-.06-3.56a28.55 28.55 0 0 0 5.42-9.44s.93.01 1.92-.05c.32-.02.41.04.35.27-.07.28-1.25 4.84-.17 7.88.74 2.08 2.4 2.75 3.4 2.75 1.15 0 2.26-.87 2.85-2.17l.23.42c1.68 2.65 4.92 2.07 6.56-.18.37-.5.58-.94.58-.94.36 2.2 2.07 2.88 3.05 2.88 1.02 0 2-.42 2.78-2.28.03.82.08 1.49.16 1.7.05.13.34.3.56.37.93.34 1.88.18 2.24.11.24-.05.43-.25.46-.75.07-1.33.03-3.56.43-5.21.67-2.79 1.3-3.87 1.6-4.4.17-.3.36-.35.37-.03.01.64.04 2.52.3 5.05.2 1.86.46 2.96.65 3.3.57 1 1.27 1.05 1.83 1.05.36 0 1.12-.1 1.05-.73-.03-.31.02-2.22.7-4.96.43-1.79 1.15-3.4 1.41-4 .1-.21.15-.04.15 0-.06 1.22-.18 5.25.32 7.46.68 2.98 2.65 3.32 3.34 3.32 1.47 0 2.67-1.12 3.07-4.05.1-.7-.05-1.25-.48-1.25Z"
                                fill="currentColor" fill-rule="evenodd"></path>
                        </svg></a>
                </div>
            </div>
            <div class="left-gnb">
                <ul class="left-gnb-ul">
                    <li>
                        <a href="">
                            <span class="icon">
                                <svg aria-label="홈" class="_ab6-" color="#fafafa" fill="#fafafa" height="24" role="img"
                                    viewBox="0 0 24 24" width="24">
                                    <path
                                        d="M22 23h-6.001a1 1 0 0 1-1-1v-5.455a2.997 2.997 0 1 0-5.993 0V22a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V11.543a1.002 1.002 0 0 1 .31-.724l10-9.543a1.001 1.001 0 0 1 1.38 0l10 9.543a1.002 1.002 0 0 1 .31.724V22a1 1 0 0 1-1 1Z">
                                    </path>
                                </svg>
                            </span>
                            <span>홈</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="icon">
                                <svg aria-label="검색" class="_ab6-" color="#fafafa" fill="#fafafa" height="24" role="img"
                                    viewBox="0 0 24 24" width="24">
                                    <path d="M19 10.5A8.5 8.5 0 1 1 10.5 2a8.5 8.5 0 0 1 8.5 8.5Z" fill="none"
                                        stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2"></path>
                                    <line fill="none" stroke="currentColor" stroke-linecap="round"
                                        stroke-linejoin="round" stroke-width="2" x1="16.511" x2="22" y1="16.511"
                                        y2="22"></line>
                                </svg>
                            </span>
                            <span>검색</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="icon">
                                <svg aria-label="탐색 탭" class="_ab6-" color="#fafafa" fill="#fafafa" height="24"
                                    role="img" viewBox="0 0 24 24" width="24">
                                    <polygon fill="none"
                                        points="13.941 13.953 7.581 16.424 10.06 10.056 16.42 7.585 13.941 13.953"
                                        stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2"></polygon>
                                    <polygon fill-rule="evenodd"
                                        points="10.06 10.056 13.949 13.945 7.581 16.424 10.06 10.056"></polygon>
                                    <circle cx="12.001" cy="12.005" fill="none" r="10.5" stroke="currentColor"
                                        stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></circle>
                                </svg>
                            </span>
                            <span>탐색 탭</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="icon">
                                <svg aria-label="릴스" class="_ab6-" color="#fafafa" fill="#fafafa" height="24" role="img"
                                    viewBox="0 0 24 24" width="24">
                                    <line fill="none" stroke="currentColor" stroke-linejoin="round" stroke-width="2"
                                        x1="2.049" x2="21.95" y1="7.002" y2="7.002"></line>
                                    <line fill="none" stroke="currentColor" stroke-linecap="round"
                                        stroke-linejoin="round" stroke-width="2" x1="13.504" x2="16.362" y1="2.001"
                                        y2="7.002"></line>
                                    <line fill="none" stroke="currentColor" stroke-linecap="round"
                                        stroke-linejoin="round" stroke-width="2" x1="7.207" x2="10.002" y1="2.11"
                                        y2="7.002"></line>
                                    <path
                                        d="M2 12.001v3.449c0 2.849.698 4.006 1.606 4.945.94.908 2.098 1.607 4.946 1.607h6.896c2.848 0 4.006-.699 4.946-1.607.908-.939 1.606-2.096 1.606-4.945V8.552c0-2.848-.698-4.006-1.606-4.945C19.454 2.699 18.296 2 15.448 2H8.552c-2.848 0-4.006.699-4.946 1.607C2.698 4.546 2 5.704 2 8.552Z"
                                        fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2">
                                    </path>
                                    <path
                                        d="M9.763 17.664a.908.908 0 0 1-.454-.787V11.63a.909.909 0 0 1 1.364-.788l4.545 2.624a.909.909 0 0 1 0 1.575l-4.545 2.624a.91.91 0 0 1-.91 0Z"
                                        fill-rule="evenodd"></path>
                                </svg>
                            </span>
                            <span>릴스</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="icon">
                                <svg aria-label="Direct" class="_ab6-" color="#fafafa" fill="#fafafa" height="24"
                                    role="img" viewBox="0 0 24 24" width="24">
                                    <line fill="none" stroke="currentColor" stroke-linejoin="round" stroke-width="2"
                                        x1="22" x2="9.218" y1="3" y2="10.083"></line>
                                    <polygon fill="none"
                                        points="11.698 20.334 22 3.001 2 3.001 9.218 10.084 11.698 20.334"
                                        stroke="currentColor" stroke-linejoin="round" stroke-width="2"></polygon>
                                </svg>
                            </span>
                            <span>메시지</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="icon">
                                <svg aria-label="알림" class="_ab6-" color="#fafafa" fill="#fafafa" height="24" role="img"
                                    viewBox="0 0 24 24" width="24">
                                    <path
                                        d="M16.792 3.904A4.989 4.989 0 0 1 21.5 9.122c0 3.072-2.652 4.959-5.197 7.222-2.512 2.243-3.865 3.469-4.303 3.752-.477-.309-2.143-1.823-4.303-3.752C5.141 14.072 2.5 12.167 2.5 9.122a4.989 4.989 0 0 1 4.708-5.218 4.21 4.21 0 0 1 3.675 1.941c.84 1.175.98 1.763 1.12 1.763s.278-.588 1.11-1.766a4.17 4.17 0 0 1 3.679-1.938m0-2a6.04 6.04 0 0 0-4.797 2.127 6.052 6.052 0 0 0-4.787-2.127A6.985 6.985 0 0 0 .5 9.122c0 3.61 2.55 5.827 5.015 7.97.283.246.569.494.853.747l1.027.918a44.998 44.998 0 0 0 3.518 3.018 2 2 0 0 0 2.174 0 45.263 45.263 0 0 0 3.626-3.115l.922-.824c.293-.26.59-.519.885-.774 2.334-2.025 4.98-4.32 4.98-7.94a6.985 6.985 0 0 0-6.708-7.218Z">
                                    </path>
                                </svg>
                            </span>
                            <span>알림</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="icon">
                                <svg aria-label="새로운 게시물" class="_ab6-" color="#fafafa" fill="#fafafa" height="24"
                                    role="img" viewBox="0 0 24 24" width="24">
                                    <path
                                        d="M2 12v3.45c0 2.849.698 4.005 1.606 4.944.94.909 2.098 1.608 4.946 1.608h6.896c2.848 0 4.006-.7 4.946-1.608C21.302 19.455 22 18.3 22 15.45V8.552c0-2.849-.698-4.006-1.606-4.945C19.454 2.7 18.296 2 15.448 2H8.552c-2.848 0-4.006.699-4.946 1.607C2.698 4.547 2 5.703 2 8.552Z"
                                        fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2">
                                    </path>
                                    <line fill="none" stroke="currentColor" stroke-linecap="round"
                                        stroke-linejoin="round" stroke-width="2" x1="6.545" x2="17.455" y1="12.001"
                                        y2="12.001"></line>
                                    <line fill="none" stroke="currentColor" stroke-linecap="round"
                                        stroke-linejoin="round" stroke-width="2" x1="12.003" x2="12.003" y1="6.545"
                                        y2="17.455"></line>
                                </svg>
                            </span>
                            <span>만들기</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="miniImg-box">
                                <img src="${cpath}/resources/img/insta-profile.jpg" width="10px" height="10px">
                            </span>
                            <span>프로필</span>
                        </a>
                    </li>
                </ul>
            </div>

            <!-- 더 보기 -->
            <!-- 더보기는 스크롤로 창크기를 줄였을 때 항상 밑에 있어야 하기 때문에 다른 메뉴들과 묶지 않았다. -->
            <div class="i-col-0 left-bottom">
                <span class="icon">
                    <svg aria-label="설정" class="_ab6-" color="#fafafa" fill="#fafafa" height="24" role="img"
                        viewBox="0 0 24 24" width="24">
                        <line fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                            stroke-width="2" x1="3" x2="21" y1="4" y2="4"></line>
                        <line fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                            stroke-width="2" x1="3" x2="21" y1="12" y2="12"></line>
                        <line fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                            stroke-width="2" x1="3" x2="21" y1="20" y2="20"></line>
                    </svg>
                </span>

                <span>더 보기</span>

                <div class="left-bottom-menu">
                    <!-- <div class=""> -->
                        <div>
                            <div>
                                <span>설정</span>
                                <svg aria-label="설정" class="_ab6-" color="#fafafa" fill="#fafafa" height="24" role="img" viewBox="0 0 24 24" width="24"><circle cx="12" cy="12" fill="none" r="8.635" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></circle><path d="M14.232 3.656a1.269 1.269 0 0 1-.796-.66L12.93 2h-1.86l-.505.996a1.269 1.269 0 0 1-.796.66m-.001 16.688a1.269 1.269 0 0 1 .796.66l.505.996h1.862l.505-.996a1.269 1.269 0 0 1 .796-.66M3.656 9.768a1.269 1.269 0 0 1-.66.796L2 11.07v1.862l.996.505a1.269 1.269 0 0 1 .66.796m16.688-.001a1.269 1.269 0 0 1 .66-.796L22 12.93v-1.86l-.996-.505a1.269 1.269 0 0 1-.66-.796M7.678 4.522a1.269 1.269 0 0 1-1.03.096l-1.06-.348L4.27 5.587l.348 1.062a1.269 1.269 0 0 1-.096 1.03m11.8 11.799a1.269 1.269 0 0 1 1.03-.096l1.06.348 1.318-1.317-.348-1.062a1.269 1.269 0 0 1 .096-1.03m-14.956.001a1.269 1.269 0 0 1 .096 1.03l-.348 1.06 1.317 1.318 1.062-.348a1.269 1.269 0 0 1 1.03.096m11.799-11.8a1.269 1.269 0 0 1-.096-1.03l.348-1.06-1.317-1.318-1.062.348a1.269 1.269 0 0 1-1.03-.096" fill="none" stroke="currentColor" stroke-linejoin="round" stroke-width="2"></path></svg>
                            </div>
                        </div>
                        <div>
                            <div><span>저장됨</span>
                                <svg aria-label="저장됨" class="_ab6-" color="#fafafa" fill="#fafafa" height="24" role="img" viewBox="0 0 24 24" width="24"><polygon fill="none" points="20 21 12 13.44 4 21 4 3 20 3 20 21" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></polygon></svg>
                            </div>
                        </div>
                        <div>
                            <div><span>모드 전환</span>
                                <svg aria-label="테마 아이콘" class="_ab6-" color="#fafafa" fill="#fafafa" height="24" role="img" viewBox="0 0 16 16" width="24"><path d="M8.05 16C3.61 16 0 12.39 0 7.95 0 3.99 2.83.65 6.72 0c.49-.03.87.22.99.6.11.38-.05.78-.41 1-1.7.93-2.75 2.69-2.75 4.61 0 2.89 2.35 5.25 5.25 5.25a5.25 5.25 0 0 0 4.61-2.74c.19-.37.61-.54 1.01-.4.42.14.66.56.58 1.01A8.044 8.044 0 0 1 8.05 16zM5.8 1.32c-2.78.93-4.73 3.56-4.73 6.63 0 3.85 3.13 6.99 6.99 6.99 3.04 0 5.66-1.93 6.61-4.72a6.301 6.301 0 0 1-4.87 2.31c-3.48 0-6.31-2.83-6.31-6.31-.01-1.93.86-3.71 2.31-4.9zm9.54 7.89s0 .01 0 0c0 .01 0 0 0 0z" fill="currentColor"></path></svg>
                            </div>
                        </div>
                        <div>
                            <div><span>내 활동</span>
                                <svg aria-label="내 활동" class="_ab6-" color="#fafafa" fill="#fafafa" height="24" role="img" viewBox="0 0 24 24" width="24"><path d="M12 1.505a10.5 10.5 0 11-7.424 17.924" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></path><polyline fill="none" points="8.893 15.108 12 12 12.012 12.012 12.012 5.793" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></polyline><circle cx="7.24" cy="2.651" r="1.125"></circle><circle cx="3.515" cy="5.83" r="1.125"></circle><circle cx="1.636" cy="10.353" r="1.125"></circle><circle cx="2.01" cy="15.235" r="1.125"></circle></svg>
                            </div>
                        </div>
                        <div>
                            <div><span>문제 신고</span>
                                <svg aria-label="문제 신고" class="_ab6-" color="#fafafa" fill="#fafafa" height="24" role="img" viewBox="0 0 24 24" width="24"><path d="M18.001 1h-12a5.006 5.006 0 0 0-5 5v9.005a5.006 5.006 0 0 0 5 5h2.514l2.789 2.712a1 1 0 0 0 1.394 0l2.787-2.712h2.516a5.006 5.006 0 0 0 5-5V6a5.006 5.006 0 0 0-5-5Zm3 14.005a3.003 3.003 0 0 1-3 3h-2.936a1 1 0 0 0-.79.387l-2.274 2.212-2.276-2.212a1 1 0 0 0-.79-.387H6a3.003 3.003 0 0 1-3-3V6a3.003 3.003 0 0 1 3-3h12a3.003 3.003 0 0 1 3 3Zm-9-1.66a1.229 1.229 0 1 0 1.228 1.228A1.23 1.23 0 0 0 12 13.344Zm0-8.117a1.274 1.274 0 0 0-.933.396 1.108 1.108 0 0 0-.3.838l.347 4.861a.892.892 0 0 0 1.77 0l.348-4.86a1.106 1.106 0 0 0-.3-.838A1.272 1.272 0 0 0 12 5.228Z"></path></svg>
                            </div>
                        </div>
                        <div><span>계정 전환</span></div>
                        <div><span>로그아웃</span></div>
                    <!-- </div> -->
                </div>
            </div>

        </div>

       








        <!-- 가운데 메인 -->
        <div class="home-main">
            <div class="main" style="display: block;">
                <div>
                    <div class="mypage">
                        <div>
                            <!-- mypage 프로필 -->
                            <div class="flex" style="justify-content: flex-end;">
                                <div class="flex">
                                    <!--mapge 프로필사진-->
                                    <div class="flex insta-main-top-ul-li"  style="justify-content: space-between;">
                                        <div class="flex insta-main-top-ul-item" style="flex-direction: row;">
                                            <div class="img-box" style="margin-right: 60px;">
                                                <img src="${cpath}/resources/img/insta-profile.jpg" alt="">
                                            </div>
                                            <div class="flex" style="flex-direction: column;">
                                                <div class="flex" style="flex-direction: row; justify-content: space-between;">
                                                    <div class="text-box">${dto.nick_name }</div>
                                                    <button id="followBtn"></button>
                                                    <div>
                                                  <span class="option hidden">
                                                     <svg aria-label="옵션" class="_ab6-" color="rgb(245, 245, 245)" fill="rgb(245, 245, 245)" height="24" role="img" viewBox="0 0 24 24" width="24"><circle cx="12" cy="12" fill="none" r="8.635" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></circle><path d="M14.232 3.656a1.269 1.269 0 0 1-.796-.66L12.93 2h-1.86l-.505.996a1.269 1.269 0 0 1-.796.66m-.001 16.688a1.269 1.269 0 0 1 .796.66l.505.996h1.862l.505-.996a1.269 1.269 0 0 1 .796-.66M3.656 9.768a1.269 1.269 0 0 1-.66.796L2 11.07v1.862l.996.505a1.269 1.269 0 0 1 .66.796m16.688-.001a1.269 1.269 0 0 1 .66-.796L22 12.93v-1.86l-.996-.505a1.269 1.269 0 0 1-.66-.796M7.678 4.522a1.269 1.269 0 0 1-1.03.096l-1.06-.348L4.27 5.587l.348 1.062a1.269 1.269 0 0 1-.096 1.03m11.8 11.799a1.269 1.269 0 0 1 1.03-.096l1.06.348 1.318-1.317-.348-1.062a1.269 1.269 0 0 1 .096-1.03m-14.956.001a1.269 1.269 0 0 1 .096 1.03l-.348 1.06 1.317 1.318 1.062-.348a1.269 1.269 0 0 1 1.03.096m11.799-11.8a1.269 1.269 0 0 1-.096-1.03l.348-1.06-1.317-1.318-1.062.348a1.269 1.269 0 0 1-1.03-.096" fill="none" stroke="currentColor" stroke-linejoin="round" stroke-width="2"></path></svg>
                                                 </span>
                                            </div>
                                                </div>
                            <!-- 모달 -->           <div class="modal hidden">
                                            <div class="bg"></div>
                                            <div class="modalBox">
                                                <a href="${cpath }/users/infoModify_replacePw"><div>비밀번호 변경</div></a>
                                                <hr>
                                                <a href="${cpath }/users/logout"><div>로그아웃</div></a>
                                                <hr>
                                                <div class="closeBtn">취소</div>
                                            </div>
                                        </div>
                                                <div class="flex" style="flex-direction: row;">

                                                    <div><span>게시물</span><span id="postCnt"></span></div>
                                                    <div><span>팔로워</span><span id="followerCnt"></span></div>
                                                    <div><span>팔로잉</span><span id="followingCnt"></span></div>
                                                </div>
                                                
                                                <div>${dto.name }</div>
                                                <div style="color: #606770;">${dto.introduce }</div>

                                            </div>

                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div style="text-align: center;">
                                게시물
                            </div>
                            <div id="imgLine" class="flex">
<!--                                     <div class="insta-post-item-middle"> -->
<!--                                         <div class="img-box"> -->
<%--                                             <img src="${cpath}/resources/img/insta-profile.jpg" alt=""> --%>
<!--                                         </div> -->
<!--                                     </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        

    
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
       let postsu = 0
       fetch('${cpath}/bringPost/${dto.idx}')
       .then(resp => resp.json())
       .then(json => {
//           console.log(json)
         
         json.forEach(dto => {
//             console.log(dto.file_name)

//                         <div class="insta-post-item-middle">
//                                    <div class="img-box">
//                                        <img src="${cpath}/resources/img/insta-profile.jpg" alt="">
//                                    </div>
//                              </div>

            let imgTag = ''
            imgTag += '<div class="insta-post-item-middle">'
            imgTag += '<div class="img-box" style="width: 300px; height: 300px;">'
            imgTag += '<a href="${cpath}/post/detail/' + dto.post_idx + '"><img src="${cpath}/upload/' + dto.file_name + '"></a>'
            imgTag += '</div>'
            imgTag += '</div>'
            imgLine.innerHTML += imgTag
            
            postsu += 1
            postCnt.innerText = postsu
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