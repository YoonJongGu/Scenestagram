<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link
  rel="stylesheet"
  href="https://unicons.iconscout.com/release/v4.0.2/css/line.css"
/>
<style>

* {margin:0; padding:0; box-sizing:border-box; -webkit-box-sizing:border-box; -moz-box-sizing:border-box; word-break: keep-all;}
html,body{max-width: 100%; min-height: 100%;}
html{overflow-x: hidden; -webkit-text-size-adjust: none;}
body{-webkit-print-color-adjust:exact; background: #fff; font-family: 'Jost', 'Noto Sans KR', sans-serif; font-style: normal; font-size: 16px; font-weight: 300; color: #333; line-height: 1.5; letter-spacing: -0.5px;}
ul, li, dl,dt,dd {margin:0;padding:0;list-style:none}
a{color:#333;text-decoration:none;}
img {border: 0; font-size: 0; max-width: 100%;}
h1, h2, h3, h4, h5, h6{font-size:1em;font-family: 'Jost', 'Noto Sans KR', sans-serif;}
textarea, select{font-family: 'Jost', 'Noto Sans KR', sans-serif;font-size:1em}
input, button{margin:0;padding:0;font-family: 'Jost', 'Noto Sans KR', sans-serif;font-size:1em}
input[type="submit"], button{cursor:pointer}
table, tr, td { border-collapse: collapse;}
p{word-break: keep-all;}
input{border-radius: 0;}


/* Default */
/* 모든속성에 적용. 레이아웃잡을때 사용함 */
*{
    margin: 0;
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
    background-color: #0f0f0f;
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

    /* 나중에 수정 */
    background-color: #0f0f0f;
    
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

/*사이드바 start*/
* {
    box-sizing: border-box;
  }
  
  body {
    margin: 0;
    background: #fafafa;
    color: #262626;
    font-family: BlinkMacSystemFont;
  }
  
  .sidebar {
    position: fixed;
    top: 0;
    left: 0;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    width: 250px;
    height: 100%;
    padding: 40px 10px 30px 10px;
    background: #0f0f0f;
    border-right: 1px solid rgb(38,38,38);
    transition: 0.3s;
        z-index: 3;
  }
  
  .sidebar-header {
    width: 100%;
    margin-bottom: 44px;
  }
  
  .logo-icon {
    display: none;
    font-size: 28px;
    height: 35px;
    width: 51px;
    text-align: center;
  }
  
  .logo-img {
    margin-left: 14px;
    height: 32px;
  }
  
  .sidebar button {
    height: 60px;
    background: transparent;
    border: 0;
    padding: 0;
    font-family: inherit;
    color: inherit;
    cursor: pointer;
  }
  
  .sidebar button > span {
    display: flex;
    align-items: center;
    gap: 12px;
    height: 48px;
    padding: 0 12px;
    border-radius: 24px;
    line-height: 1;
  }
  
  .sidebar button:hover > span {
    background: #0f0f0f;
  }
  
  .sidebar button:hover > span :is(i, img) {
    scale: 1.05;
  }
  
  .sidebar button > span > span {
    transition: 0.3s;
  }
  
  @media (width < 580px) {
    .logo-img {
      display: none;
      
    }
    
    div.main{
   	    margin-left: 70px;
    }
  	
    .logo-icon {
      display: block;
    }
  
    .sidebar {
      width: 72px;
    }
  
    .sidebar button > span {
      width: 50px;
    }
  
    .sidebar button > span > span {
      opacity: 0;
      visibility: hidden;
    }
  }
  
  .sidebar button i {
    position: relative;
    font-size: 28px;
    transition: 0.2s;
  }
  
  .sidebar button img {
    width: 28px;
    height: 28px;
    transition: 0.2s;
    border-radius: 30px;
  }
  
  .sidebar button i > span {
    display: grid;
    place-items: center;
    height: 20px;
    padding: 0 4px;
    border-radius: 10px;
    position: absolute;
    top: -5px;
    right: -10px;
    border: 1px solid #ffffff;
    background: #ff2f40;
    color: #f9f9f9;
    font-size: 12px;
    font-family: BlinkMacSystemFont;
    font-style: normal;
  }
  
  .sidebar button i > em {
    display: block;
    height: 10px;
    width: 10px;
    border-radius: 10px;
    position: absolute;
    top: 2px;
    right: -1px;
    border: 1px solid #ffffff;
    background: #ff2f40;
    color: #f9f9f9;
    font-size: 12px;
    font-family: BlinkMacSystemFont;
    font-style: normal;
  }
  
  .sidebar button span {
    font-size: 17px;
  }
  
  .sidebar > nav {
    flex: 1 1 auto;
    display: flex;
    flex-direction: column;
    width: 100%;
  }
  
  .sidebar > nav button:last-child {
    margin-top: auto;
  }
  /*사이드바 end*/


 /*    서치박스 스타일 */
   
      .search-box {
            width: 333px;
            position: fixed;
            transition-duration: 1.0s;
            z-index: 2;
            left: -333px;            
            
        }
        .search-box-action {
/*             left: -333px; */
/*             transform: translateX(150px); */
        }

        .search-button {
            background-color: #0f0f0f;
            color: #0095f6;
            font-weight: bold;
        }

        input {
            outline: none;
        }

        .flex {
            display: flex;
        }

        .f-between {
            justify-content: space-between;
        }

        .absolute {
            position: absolute;
        }

        .hidden {
            visibility: hidden;
        }
        
        form select {
           color: black;
        }
        
        select option {
           color: black;
        }
        
      /* 서치박스 스타일 end */
        
      /* 서치탭에 a태그 날리고 이거 넣엇습니다 */
         .search-btn {
          display: block;
          font-size: 16px;
          color: #fff;
          padding: 16px 12px;
      }

  
</style>
</head>
<body>

       <div class="search-box" style="height: 100vh;">
            <div class="search-box-top">
                <h2>검색</h2>
            </div>
            <br>
            <div class="">
                <div class="">
                    <form method="GET" id="form">
                       <select id="option">
                          <option value="usersOption" selected="selected">유저</option>
                          <option value="hashOption">해시</option>
                       </select>
<!--                   <input type="radio" name="option" value="usersOption">유저 -->
<!--                   <input type="radio" name="option" value="hashOption">태그 -->
                  <input id="searchValue" type="text" name="searchValue" placeholder="검색" style="color: black;">
                  <input type="submit" value="검색">
               </form>
                </div>
                <br>
                <div class="">
                    <div id="root"></div>

                </div>
            </div>
        </div>


<div class="screen">

        <!-- 왼쪽 사이드 메뉴 -->
  <aside class="sidebar">
    <header class="sidebar-header">
      <img class="logo-img" src="${cpath }/resources/img/logo_dark.png" />
      <i class="logo-icon uil uil-instagram"></i>
    </header>
    <nav>

      <button>
        <span>
          <i class="uil uil-estate"></i>
          <span>홈</span>
        </span>
      </button>

      <button class="search-btn">
        <span>
          <i class="uil uil-search"></i>
          <span>검색</span>
        </span>
      </button>

      <button>
        <span>
          <i class="uil uil-compass"></i>
          <span>탐색 탭</span>
        </span>
      </button>

      <button>
        <span>
          <i class="uil uil-location-arrow">
            <span>12</span>
          </i>
          <span>메시지</span>
        </span>
      </button>

      <button>
        <span>
          <i class="uil uil-heart">
            <em></em>
          </i>
          <span>알림</span>
        </span>
      </button>

      <button>
        <span>
          <i class="uil uil-plus-circle"> </i>
          <span>만들기</span>
        </span>
      </button>

      <button>
        <span>
          <img src="${cpath }/resources/img/userImg.jpg" />
          <span>프로필</span>
        </span>
      </button>

      <button>
        <span>
          <i class="uil uil-bars"> </i>
          <span>더 보기</span>
        </span>
      </button>
    </nav>
  </aside>
<!-- 사이드메뉴 end -->
        <!-- 가운데 메인 -->
        <div class="home-main">
            <div class="main">
                <div style="display: block;">
                    <div class="home-feed">
                        <div class="home-feed-left">
                            <!-- 스토리-->
                            <div class="stoty">
                                <div class="i-col-0 insta-main-top-ul">
                                    <!--아이템들 loop-->
                                    <div class="insta-main-top-ul-li">
                                        <div class="insta-main-top-ul-item">
                                            <div class="img-box">
                                                <img src="${cpath}/resources/img/insta-profile.jpg" alt="">                                                
                                            </div>
                                            <div class="text-box">cha_ni__</div>
                                        </div>
                                    </div>
                                    <!--아이템들 loop-->
                                    <div class="insta-main-top-ul-li">
                                        <div class="insta-main-top-ul-item">
                                            <div class="img-box">
                                                <img src="${cpath}/resources/img/insta-profile.jpg" alt="">
                                            </div>
                                            <div class="text-box">cha_ni__</div>
                                        </div>
                                    </div>
                                    <!--아이템들 loop-->
                                    <div class="insta-main-top-ul-li">
                                        <div class="insta-main-top-ul-item">
                                            <div class="img-box">
                                                <img src="${cpath}/resources/img/insta-profile.jpg" alt="">
                                            </div>
                                            <div class="text-box">cha_ni__</div>
                                        </div>
                                    </div>
                                    <!--아이템들 loop-->
                                    <div class="insta-main-top-ul-li">
                                        <div class="insta-main-top-ul-item">
                                            <div class="img-box">
                                                <img src="${cpath}/resources/img/insta-profile.jpg" alt="">
                                            </div>
                                            <div class="text-box">cha_ni__</div>
                                        </div>
                                    </div>
                                    <!--아이템들 loop-->
                                    <div class="insta-main-top-ul-li">
                                        <div class="insta-main-top-ul-item">
                                            <div class="img-box">
                                                <img src="${cpath}/resources/img/insta-profile.jpg" alt="">
                                            </div>
                                            <div class="text-box">cha_ni__</div>
                                        </div>
                                    </div>
                                    <!--아이템들 loop-->
                                    <div class="insta-main-top-ul-li">
                                        <div class="insta-main-top-ul-item">
                                            <div class="img-box">
                                                <img src="${cpath}/resources/img/insta-profile.jpg" alt="">
                                            </div>
                                            <div class="text-box">cha_ni__</div>
                                        </div>
                                    </div>



                                </div>

                            </div>

                            <!-- 게시물 (POST) -->
                            <div class="post">
                                <!-- Loop -->
                                <div class="insta-post-item">
                                    <div class="i-col-0 insta-post-item-top">

                                        <div class="img-box">
                                            <img src="${cpath}/resources/img/insta-profile.jpg" alt="">
                                        </div>
                                        <div class="i-col-0 id-box">
                                            <span class="id">cha_ni__</span>
                                            <span>•</span>
                                            <span class="day">2일</span>
                                        </div>

                                        <div class="option-box">
                                            <svg aria-label="옵션 더 보기" class="_ab6-" color="#fafafa" fill="#fafafa"
                                                height="24" role="img" viewBox="0 0 24 24" width="24">
                                                <circle cx="12" cy="12" r="1.5"></circle>
                                                <circle cx="6" cy="12" r="1.5"></circle>
                                                <circle cx="18" cy="12" r="1.5"></circle>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="insta-post-item-middle">
                                        <div class="img-box">
                                            <img src="${cpath}/resources/img/insta-profile.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="insta-post-item-btn-box">
                                        <ul class="i-col-0 insta-post-item-btn-ul">
                                            <li>
                                                <a href="">
                                                    <svg aria-label="좋아요" class="_ab6-" color="#fafafa" fill="#fafafa"
                                                        height="24" role="img" viewBox="0 0 24 24" width="24">
                                                        <path
                                                            d="M16.792 3.904A4.989 4.989 0 0 1 21.5 9.122c0 3.072-2.652 4.959-5.197 7.222-2.512 2.243-3.865 3.469-4.303 3.752-.477-.309-2.143-1.823-4.303-3.752C5.141 14.072 2.5 12.167 2.5 9.122a4.989 4.989 0 0 1 4.708-5.218 4.21 4.21 0 0 1 3.675 1.941c.84 1.175.98 1.763 1.12 1.763s.278-.588 1.11-1.766a4.17 4.17 0 0 1 3.679-1.938m0-2a6.04 6.04 0 0 0-4.797 2.127 6.052 6.052 0 0 0-4.787-2.127A6.985 6.985 0 0 0 .5 9.122c0 3.61 2.55 5.827 5.015 7.97.283.246.569.494.853.747l1.027.918a44.998 44.998 0 0 0 3.518 3.018 2 2 0 0 0 2.174 0 45.263 45.263 0 0 0 3.626-3.115l.922-.824c.293-.26.59-.519.885-.774 2.334-2.025 4.98-4.32 4.98-7.94a6.985 6.985 0 0 0-6.708-7.218Z">
                                                        </path>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="">
                                                    <svg aria-label="댓글 달기" class="_ab6-" color="#fafafa" fill="#fafafa"
                                                        height="24" role="img" viewBox="0 0 24 24" width="24">
                                                        <path d="M20.656 17.008a9.993 9.993 0 1 0-3.59 3.615L22 22Z"
                                                            fill="none" stroke="currentColor" stroke-linejoin="round"
                                                            stroke-width="2"></path>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="">
                                                    <svg aria-label="게시물 공유" class="_ab6-" color="#fafafa"
                                                        fill="#fafafa" height="24" role="img" viewBox="0 0 24 24"
                                                        width="24">
                                                        <line fill="none" stroke="currentColor" stroke-linejoin="round"
                                                            stroke-width="2" x1="22" x2="9.218" y1="3" y2="10.083">
                                                        </line>
                                                        <polygon fill="none"
                                                            points="11.698 20.334 22 3.001 2 3.001 9.218 10.084 11.698 20.334"
                                                            stroke="currentColor" stroke-linejoin="round"
                                                            stroke-width="2"></polygon>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li class="bookmark">
                                                <a href="">
                                                    <svg aria-label="저장" class="_ab6-" color="#fafafa" fill="#fafafa"
                                                        height="24" role="img" viewBox="0 0 24 24" width="24">
                                                        <polygon fill="none" points="20 21 12 13.44 4 21 4 3 20 3 20 21"
                                                            stroke="currentColor" stroke-linecap="round"
                                                            stroke-linejoin="round" stroke-width="2"></polygon>
                                                    </svg>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="insta-post-item-comment">
                                        <p class="good">좋아요 99개</p>
                                        <p class="post-comment">여기는 게시글입니다</p>
                                        <p class="post-reply">여기는 댓글보여주는곳</p>
                                        <textarea aria-label="댓글 달기..." placeholder="댓글 달기..."></textarea>
                                    </div>
                                </div>
                                <div class="insta-post-item">
                                    <div class="i-col-0 insta-post-item-top">

                                        <div class="img-box">
                                            <img src="${cpath}/resources/img/insta-profile.jpg" alt="">
                                        </div>
                                        <div class="i-col-0 id-box">
                                            <span class="id">cha_ni__</span>
                                            <span>•</span>
                                            <span class="day">2일</span>
                                        </div>

                                        <div class="option-box">
                                            <svg aria-label="옵션 더 보기" class="_ab6-" color="#fafafa" fill="#fafafa"
                                                height="24" role="img" viewBox="0 0 24 24" width="24">
                                                <circle cx="12" cy="12" r="1.5"></circle>
                                                <circle cx="6" cy="12" r="1.5"></circle>
                                                <circle cx="18" cy="12" r="1.5"></circle>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="insta-post-item-middle">
                                        <div class="img-box">
                                            <img src="${cpath}/resources/img/insta-profile.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="insta-post-item-btn-box">
                                        <ul class="i-col-0 insta-post-item-btn-ul">
                                            <li>
                                                <a href="">
                                                    <svg aria-label="좋아요" class="_ab6-" color="#fafafa" fill="#fafafa"
                                                        height="24" role="img" viewBox="0 0 24 24" width="24">
                                                        <path
                                                            d="M16.792 3.904A4.989 4.989 0 0 1 21.5 9.122c0 3.072-2.652 4.959-5.197 7.222-2.512 2.243-3.865 3.469-4.303 3.752-.477-.309-2.143-1.823-4.303-3.752C5.141 14.072 2.5 12.167 2.5 9.122a4.989 4.989 0 0 1 4.708-5.218 4.21 4.21 0 0 1 3.675 1.941c.84 1.175.98 1.763 1.12 1.763s.278-.588 1.11-1.766a4.17 4.17 0 0 1 3.679-1.938m0-2a6.04 6.04 0 0 0-4.797 2.127 6.052 6.052 0 0 0-4.787-2.127A6.985 6.985 0 0 0 .5 9.122c0 3.61 2.55 5.827 5.015 7.97.283.246.569.494.853.747l1.027.918a44.998 44.998 0 0 0 3.518 3.018 2 2 0 0 0 2.174 0 45.263 45.263 0 0 0 3.626-3.115l.922-.824c.293-.26.59-.519.885-.774 2.334-2.025 4.98-4.32 4.98-7.94a6.985 6.985 0 0 0-6.708-7.218Z">
                                                        </path>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="">
                                                    <svg aria-label="댓글 달기" class="_ab6-" color="#fafafa" fill="#fafafa"
                                                        height="24" role="img" viewBox="0 0 24 24" width="24">
                                                        <path d="M20.656 17.008a9.993 9.993 0 1 0-3.59 3.615L22 22Z"
                                                            fill="none" stroke="currentColor" stroke-linejoin="round"
                                                            stroke-width="2"></path>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="">
                                                    <svg aria-label="게시물 공유" class="_ab6-" color="#fafafa"
                                                        fill="#fafafa" height="24" role="img" viewBox="0 0 24 24"
                                                        width="24">
                                                        <line fill="none" stroke="currentColor" stroke-linejoin="round"
                                                            stroke-width="2" x1="22" x2="9.218" y1="3" y2="10.083">
                                                        </line>
                                                        <polygon fill="none"
                                                            points="11.698 20.334 22 3.001 2 3.001 9.218 10.084 11.698 20.334"
                                                            stroke="currentColor" stroke-linejoin="round"
                                                            stroke-width="2"></polygon>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li class="bookmark">
                                                <a href="">
                                                    <svg aria-label="저장" class="_ab6-" color="#fafafa" fill="#fafafa"
                                                        height="24" role="img" viewBox="0 0 24 24" width="24">
                                                        <polygon fill="none" points="20 21 12 13.44 4 21 4 3 20 3 20 21"
                                                            stroke="currentColor" stroke-linecap="round"
                                                            stroke-linejoin="round" stroke-width="2"></polygon>
                                                    </svg>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="insta-post-item-comment">
                                        <p class="good">좋아요 99개</p>
                                        <p class="post-comment">여기는 게시글입니다</p>
                                        <p class="post-reply">여기는 댓글</p>
                                    </div>
                                </div>
                                <div class="insta-post-item">
                                    <div class="i-col-0 insta-post-item-top">

                                        <div class="img-box">
                                            <img src="${cpath}/resources/img/insta-profile.jpg" alt="">
                                        </div>
                                        <div class="i-col-0 id-box">
                                            <span class="id">cha_ni__</span>
                                            <span>•</span>
                                            <span class="day">2일</span>
                                        </div>

                                        <div class="option-box">
                                            <svg aria-label="옵션 더 보기" class="_ab6-" color="#fafafa" fill="#fafafa"
                                                height="24" role="img" viewBox="0 0 24 24" width="24">
                                                <circle cx="12" cy="12" r="1.5"></circle>
                                                <circle cx="6" cy="12" r="1.5"></circle>
                                                <circle cx="18" cy="12" r="1.5"></circle>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="insta-post-item-middle">
                                        <div class="img-box">
                                            <img src="${cpath}/resources/img/insta-profile.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="insta-post-item-btn-box">
                                        <ul class="i-col-0 insta-post-item-btn-ul">
                                            <li>
                                                <a href="">
                                                    <svg aria-label="좋아요" class="_ab6-" color="#fafafa" fill="#fafafa"
                                                        height="24" role="img" viewBox="0 0 24 24" width="24">
                                                        <path
                                                            d="M16.792 3.904A4.989 4.989 0 0 1 21.5 9.122c0 3.072-2.652 4.959-5.197 7.222-2.512 2.243-3.865 3.469-4.303 3.752-.477-.309-2.143-1.823-4.303-3.752C5.141 14.072 2.5 12.167 2.5 9.122a4.989 4.989 0 0 1 4.708-5.218 4.21 4.21 0 0 1 3.675 1.941c.84 1.175.98 1.763 1.12 1.763s.278-.588 1.11-1.766a4.17 4.17 0 0 1 3.679-1.938m0-2a6.04 6.04 0 0 0-4.797 2.127 6.052 6.052 0 0 0-4.787-2.127A6.985 6.985 0 0 0 .5 9.122c0 3.61 2.55 5.827 5.015 7.97.283.246.569.494.853.747l1.027.918a44.998 44.998 0 0 0 3.518 3.018 2 2 0 0 0 2.174 0 45.263 45.263 0 0 0 3.626-3.115l.922-.824c.293-.26.59-.519.885-.774 2.334-2.025 4.98-4.32 4.98-7.94a6.985 6.985 0 0 0-6.708-7.218Z">
                                                        </path>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="">
                                                    <svg aria-label="댓글 달기" class="_ab6-" color="#fafafa" fill="#fafafa"
                                                        height="24" role="img" viewBox="0 0 24 24" width="24">
                                                        <path d="M20.656 17.008a9.993 9.993 0 1 0-3.59 3.615L22 22Z"
                                                            fill="none" stroke="currentColor" stroke-linejoin="round"
                                                            stroke-width="2"></path>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="">
                                                    <svg aria-label="게시물 공유" class="_ab6-" color="#fafafa"
                                                        fill="#fafafa" height="24" role="img" viewBox="0 0 24 24"
                                                        width="24">
                                                        <line fill="none" stroke="currentColor" stroke-linejoin="round"
                                                            stroke-width="2" x1="22" x2="9.218" y1="3" y2="10.083">
                                                        </line>
                                                        <polygon fill="none"
                                                            points="11.698 20.334 22 3.001 2 3.001 9.218 10.084 11.698 20.334"
                                                            stroke="currentColor" stroke-linejoin="round"
                                                            stroke-width="2"></polygon>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li class="bookmark">
                                                <a href="">
                                                    <svg aria-label="저장" class="_ab6-" color="#fafafa" fill="#fafafa"
                                                        height="24" role="img" viewBox="0 0 24 24" width="24">
                                                        <polygon fill="none" points="20 21 12 13.44 4 21 4 3 20 3 20 21"
                                                            stroke="currentColor" stroke-linecap="round"
                                                            stroke-linejoin="round" stroke-width="2"></polygon>
                                                    </svg>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="insta-post-item-comment">
                                        <p class="good">좋아요 99개</p>
                                        <p class="post-comment">여기는 게시글입니다</p>
                                        <p class="post-reply">여기는 댓글</p>
                                    </div>
                                </div>
                                <div class="insta-post-item">
                                    <div class="i-col-0 insta-post-item-top">

                                        <div class="img-box">
                                            <img src="${cpath}/resources/img/insta-profile.jpg" alt="">
                                        </div>
                                        <div class="i-col-0 id-box">
                                            <span class="id">cha_ni__</span>
                                            <span>•</span>
                                            <span class="day">2일</span>
                                        </div>

                                        <div class="option-box">
                                            <svg aria-label="옵션 더 보기" class="_ab6-" color="#fafafa" fill="#fafafa"
                                                height="24" role="img" viewBox="0 0 24 24" width="24">
                                                <circle cx="12" cy="12" r="1.5"></circle>
                                                <circle cx="6" cy="12" r="1.5"></circle>
                                                <circle cx="18" cy="12" r="1.5"></circle>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="insta-post-item-middle">
                                        <div class="img-box">
                                            <img src="${cpath}/resources/img/insta-profile.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="insta-post-item-btn-box">
                                        <ul class="i-col-0 insta-post-item-btn-ul">
                                            <li>
                                                <a href="">
                                                    <svg aria-label="좋아요" class="_ab6-" color="#fafafa" fill="#fafafa"
                                                        height="24" role="img" viewBox="0 0 24 24" width="24">
                                                        <path
                                                            d="M16.792 3.904A4.989 4.989 0 0 1 21.5 9.122c0 3.072-2.652 4.959-5.197 7.222-2.512 2.243-3.865 3.469-4.303 3.752-.477-.309-2.143-1.823-4.303-3.752C5.141 14.072 2.5 12.167 2.5 9.122a4.989 4.989 0 0 1 4.708-5.218 4.21 4.21 0 0 1 3.675 1.941c.84 1.175.98 1.763 1.12 1.763s.278-.588 1.11-1.766a4.17 4.17 0 0 1 3.679-1.938m0-2a6.04 6.04 0 0 0-4.797 2.127 6.052 6.052 0 0 0-4.787-2.127A6.985 6.985 0 0 0 .5 9.122c0 3.61 2.55 5.827 5.015 7.97.283.246.569.494.853.747l1.027.918a44.998 44.998 0 0 0 3.518 3.018 2 2 0 0 0 2.174 0 45.263 45.263 0 0 0 3.626-3.115l.922-.824c.293-.26.59-.519.885-.774 2.334-2.025 4.98-4.32 4.98-7.94a6.985 6.985 0 0 0-6.708-7.218Z">
                                                        </path>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="">
                                                    <svg aria-label="댓글 달기" class="_ab6-" color="#fafafa" fill="#fafafa"
                                                        height="24" role="img" viewBox="0 0 24 24" width="24">
                                                        <path d="M20.656 17.008a9.993 9.993 0 1 0-3.59 3.615L22 22Z"
                                                            fill="none" stroke="currentColor" stroke-linejoin="round"
                                                            stroke-width="2"></path>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="">
                                                    <svg aria-label="게시물 공유" class="_ab6-" color="#fafafa"
                                                        fill="#fafafa" height="24" role="img" viewBox="0 0 24 24"
                                                        width="24">
                                                        <line fill="none" stroke="currentColor" stroke-linejoin="round"
                                                            stroke-width="2" x1="22" x2="9.218" y1="3" y2="10.083">
                                                        </line>
                                                        <polygon fill="none"
                                                            points="11.698 20.334 22 3.001 2 3.001 9.218 10.084 11.698 20.334"
                                                            stroke="currentColor" stroke-linejoin="round"
                                                            stroke-width="2"></polygon>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li class="bookmark">
                                                <a href="">
                                                    <svg aria-label="저장" class="_ab6-" color="#fafafa" fill="#fafafa"
                                                        height="24" role="img" viewBox="0 0 24 24" width="24">
                                                        <polygon fill="none" points="20 21 12 13.44 4 21 4 3 20 3 20 21"
                                                            stroke="currentColor" stroke-linecap="round"
                                                            stroke-linejoin="round" stroke-width="2"></polygon>
                                                    </svg>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="insta-post-item-comment">
                                        <p class="good">좋아요 99개</p>
                                        <p class="post-comment">여기는 게시글입니다</p>
                                        <p class="post-reply">여기는 댓글</p>
                                    </div>
                                </div>
                            </div>
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
                            <div class="home-feed-right-footer">
                                <div>
                                    <a href=""><span>소개</span></a><span>•</span>
                                    <a href=""><span>도움말</span></a><span>•</span>
                                    <a href=""><span>홍보 센터</span></a><span>•</span>
                                    <a href=""><span>API</span></a><span>•</span>
                                    <a href=""><span>채용 정보</span></a><span>•</span>
                                    <a href=""><span>개인정보처리방침</span></a><span>•</span>
                                    <a href=""><span>약관</span></a><span>•</span>
                                    <a href=""><span>위치</span></a><span>•</span>
                                    <a href=""><span>언어</span></a>
                                </div>
                                <div>
                                    © 2023 INSTAGRAM FROM META
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    <a href="${cpath }/users/viewDetail">뷰 디테일 페이지</a>

    </div>
    <script>
    const searchBtn = document.querySelector('.search-btn')
    const searchBar = document.querySelector('.search-box')
  let searchValue = 0
    function searchHandler(){
       if(searchValue == 0) {
           searchBar.style.left="265px"
           searchValue = 1
       }
       else if (searchValue == 1) {
          searchBar.style.left="-350px"
          
          searchValue = 0
       }
    }
    searchBtn.onclick = searchHandler
</script>
<script>
const root = document.getElementById('root')
const form = document.getElementById('form')

function searchHandler(event) {
  event.preventDefault()
  root.innerText = ''        // 다른 옵션 선택하면 기존에 보던 애들 날려주기
  
//   const option = document.querySelector('input[name="option"]:checked').value // 옵션 = 옵션(라디오)에 체크된.값
  const selectOption = document.getElementById('option')
  const option = selectOption.options[selectOption.selectedIndex].value
  console.log(option)
  const searchValue = document.querySelector('input[name="searchValue"]').value
  console.log(searchValue)
  
  if(option == 'usersOption') {
     fetch('${cpath}/usersSearch/' + searchValue)
     .then(resp => resp.json())
     .then(json => {
        console.log(json)   // 여기에 지금 유저리스트 담겨있스빈다
        json.forEach(dto => {
           let tag = ''      // 여기에 유저 프사 넣는 것도 해야됨
           tag += '<a href="${cpath}/users/viewDetail/'+ dto.idx + '"><div><img src="${cpath}/C:\\userProfile">' + dto.nick_name + '</div></a>'
           root.innerHTML += tag
        })
     })
  }
  else if (option == 'hashOption') {
     fetch('${cpath}/hashSearch/' + searchValue)
     .then(resp => resp.json())
     .then(json => {
        console.log(json)   // 여기에 지금 해시리스트 담겨잇스빈다
        json.forEach(dto => {
           let tag = ''
           tag = '<a href="${cpath}/post/postList/'+ dto.hashtag.replace("#", "") + '/"><div class="name">' + dto.hashtag + '</div></a>'
           console.log(dto.hashtag)
           console.log(dto.hashtag.replace("#", ""))
           root.innerHTML += tag
        })
     })
  }
  else {
     console.log('아무것도 안넣으면 뭔가를 추천해주는 옵션')
     // 아무것도 안넣으면 추천해주는 옵션
  }
  
//   const url = '${cpath}/search?option=' + ob.option + '&searchValue=' + ob.searchValue      
//   fetch(url)
//   .then(resp => resp.json())
//   .then(json => {
//      console.log(json)
     
//      json.forEach(dto => {
//         let tag = ''
//         tag += '<div class="item" idx="' + dto.name +'">'
//         tag += '</div>'
//         root.innerText += tag
//      })
//   })
}

form.onsubmit = searchHandler


</script>


</body>
</html>