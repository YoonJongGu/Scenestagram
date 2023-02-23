<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link
  rel="stylesheet"
  href="https://unicons.iconscout.com/release/v4.0.2/css/line.css"
/>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/style.css">
<style type="text/css">
	/*사이드바 start*/
* {margin:0; padding:0; box-sizing:border-box; -webkit-box-sizing:border-box; -moz-box-sizing:border-box; word-break: keep-all;color: #fff;}
html,body{max-width: 100%; min-height: 100%;}
html{overflow-x: hidden; -webkit-text-size-adjust: none;background-color: #000;}
body{-webkit-print-color-adjust:exact; background: #000; font-family: 'Jost', 'Noto Sans KR', sans-serif; font-style: normal; font-size: 16px; font-weight: 300; color: #333; line-height: 1.5; letter-spacing: -0.5px;}
ul, li, dl,dt,dd {margin:0;padding:0;list-style:none}
a{color:#fff;text-decoration:none;}
img {border: 0; font-size: 0; max-width: 100%;}
h1, h2, h3, h4, h5, h6{font-size:1em;font-family: 'Jost', 'Noto Sans KR', sans-serif;}
textarea, select{font-family: 'Jost', 'Noto Sans KR', sans-serif;font-size:1em}
input, button{margin:0;padding:0;font-family: 'Jost', 'Noto Sans KR', sans-serif;font-size:1em}
input[type="submit"], button{cursor:pointer}
table, tr, td { border-collapse: collapse;}
p{word-break: keep-all;}
input{border-radius: 0;}
  
  body {
    margin: 0;
    font-family: BlinkMacSystemFont;
    position: relative;
  } 
  
  .all_wrap{
	display: flex;
    justify-content: center;
    background-color: #000;
    margin-left: 100px;
    margin-bottom: 110px;
    min-height: 800px;
}
  .main_wrap{

  display: flex;
  justify-content: center;
  color:white;
  padding: 30px 0 30px 0;
  margin-left: 100px;
  
} 
  .foot{
	position: absolute;
    bottom: -85px;
    text-align: center;
    width: 100%;
    color: #ffff;
    margin-left: 77px;
  }
  .sidebar {
    position: fixed;
    top: 0;
    left: 0;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    height: 100%;
    padding: 40px 10px 30px 10px;
    background: #000;
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
  
  @media (width < 1200px){
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
      width: 72px !important;
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
            background-color: #000;
            
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


/*---------더보기 style----------*/
.more_menu{
 	opacity: 0;
	transition-duration: 1.2s;
	position: absolute;
	z-index: 0;
    bottom: 83px;
    left: 4px;
	width: 238px;
}
.more_menu_wrap{
	width: 238px;
}
.more_menu_wrap div{
	background-color: #262626;
}
.more_menu_wrap > div{
	display: flex;
	height: 44px;
 	justify-content: space-between;
    align-items: center;
    padding: 0 20px;
    cursor: pointer;
}
.more_menu_wrap > div:nth-child(1){
	border-top-left-radius: 15px;
    border-top-right-radius: 15px;
}

.more_menu_wrap > div:nth-child(2) {
	border-bottom-right-radius: 15px;	
	border-bottom-left-radius: 15px;	
}
.more_menu_wrap > div:hover {
	background: #121212
}
/*---------더보기 style end----------*/  


</style>
</head>
<body>
<!-- 검색창 -->
<div class="search-box" style="height: 100vh;">
    <div class="search-box-top">
        <h2>검색</h2>
    </div>
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
<!-- 검색창 end -->

<!-- 왼쪽 사이드 메뉴 -->
  <aside class="sidebar">
    <header class="sidebar-header">
      <img class="logo-img" src="${cpath }/resources/img/logo_dark.png" />
      <i class="logo-icon uil uil-instagram"></i>
    </header>
    <nav>

      <button class="sidevar_go_main">
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

      <button class="sidevar_go_profile">
        <span>
          <img src="${cpath }/resources/img/userImg.jpg" />
          <span>프로필</span>
        </span>
      </button>

      <button class="more_menu_btn">
        <span>
          <i class="uil uil-bars"> </i>
          <span>더 보기</span>
        </span>
      </button>
    </nav>
  </aside>
<!-- 사이드메뉴 end -->

		<!-- 더 보기 목록 -->
		<div class="more_menu">
			<div class="more_menu_wrap">
				<div class="more_menu_option_btn">
					<div>설정</div>
					<div class="_ab8w  _ab94 _ab99 _ab9f _ab9m _ab9p  _abb1 _abcm"><svg aria-label="설정" class="_ab6-" color="rgb(245, 245, 245)" fill="rgb(245, 245, 245)" height="24" role="img" viewBox="0 0 24 24" width="24"><circle cx="12" cy="12" fill="none" r="8.635" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></circle><path d="M14.232 3.656a1.269 1.269 0 0 1-.796-.66L12.93 2h-1.86l-.505.996a1.269 1.269 0 0 1-.796.66m-.001 16.688a1.269 1.269 0 0 1 .796.66l.505.996h1.862l.505-.996a1.269 1.269 0 0 1 .796-.66M3.656 9.768a1.269 1.269 0 0 1-.66.796L2 11.07v1.862l.996.505a1.269 1.269 0 0 1 .66.796m16.688-.001a1.269 1.269 0 0 1 .66-.796L22 12.93v-1.86l-.996-.505a1.269 1.269 0 0 1-.66-.796M7.678 4.522a1.269 1.269 0 0 1-1.03.096l-1.06-.348L4.27 5.587l.348 1.062a1.269 1.269 0 0 1-.096 1.03m11.8 11.799a1.269 1.269 0 0 1 1.03-.096l1.06.348 1.318-1.317-.348-1.062a1.269 1.269 0 0 1 .096-1.03m-14.956.001a1.269 1.269 0 0 1 .096 1.03l-.348 1.06 1.317 1.318 1.062-.348a1.269 1.269 0 0 1 1.03.096m11.799-11.8a1.269 1.269 0 0 1-.096-1.03l.348-1.06-1.317-1.318-1.062.348a1.269 1.269 0 0 1-1.03-.096" fill="none" stroke="currentColor" stroke-linejoin="round" stroke-width="2"></path></svg></div>
				</div>
				<div class="more_menu_logout_btn">
					<div>로그아웃</div>
				</div>
			</div>		
		</div>
		<!-- 더 보기 목록end -->
		<!-- foot -->
		<div class="foot">
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
      	<!-- foot end-->

<!-- 사이드바 이동 스크립트 -->
<script type="text/javascript">
	//프로필 누를시 viewdetail이동
  	const sidevar_go_profile  = document.querySelector('.sidevar_go_profile')
  	go_profile_url = '${cpath}/users/viewDetail/${login.idx}'
	function go_profile_handler() {location.href = go_profile_url}
  	sidevar_go_profile.onclick = go_profile_handler
  	
  	// 홈 누를시 홈화면 이동
  	const sidevar_go_main  = document.querySelector('.sidevar_go_main')
  	go_home_url = '${cpath}/users/main'
	function go_home_handler() {location.href = go_home_url}
  	sidevar_go_main.onclick = go_home_handler
  	
</script>

<!-- 사이드바 검색 표시 숨기기 -->    
<script>
    const searchBtn = document.querySelector('.search-btn')
    const searchBar = document.querySelector('.search-box')
    const sideBar = document.querySelector('.sidebar')
  	let searchASC = 0
   	sideBar.style.width = '250px'
    function searchHandler(){
       if(searchASC == 0) {
    	   if(sideBar.style.width == '250px'){
	           searchBar.style.left="250px"    		   
    	   }
    	   else{
    		   searchBar.style.left="72px"
    	   }
    	   searchASC = 1
       }
       else if (searchASC == 1) {
          searchBar.style.left="-350px"
          
        	searchASC = 0
       }
    }
    searchBtn.onclick = searchHandler
</script>

<!-- 더보기 클릭시 요청 처리 -->
<script type="text/javascript">
	// 설정 누를시infoModify이동
	const more_menu_option_btn  = document.querySelector('.more_menu_option_btn')
  	go_infoModify_url = '${cpath}/users/infoModify'
	function go_infoModify_handler() {location.href = go_infoModify_url}
  	more_menu_option_btn.onclick = go_infoModify_handler
  	
  	// 로그아웃 누를시 로그아웃 요청
  	const more_menu_logout_btn  = document.querySelector('.more_menu_logout_btn')
  	go_logout_url = '${cpath}/users/logout'
	function go_logout_handler() {
		alert('로그아웃 되셨습니다.')  		
		location.replace(go_logout_url);
  		}
  	more_menu_logout_btn.onclick = go_logout_handler
  	
</script>
	
<!-- 더보기 표시 숨기기 -->
<script>
    const more_menu = document.querySelector('.more_menu')
    const more_menu_btn = document.querySelector('.more_menu_btn')
  	let menuShowVal = 0
    function moreMenuShowHandler(){
       if(menuShowVal == 0) {
    	   more_menu.style.opacity = "1"
    		   more_menu.style.zIndex="4"
    		   menuShowVal = 1
       }
       else if (menuShowVal == 1) {
    	   more_menu.style.opacity = "0"
    		   more_menu.style.zIndex="0"
    		   menuShowVal = 0
       }
    }
    more_menu_btn.onclick = moreMenuShowHandler
</script>
<!-- 사이드바 검색 효과 -->
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
           tag += '<a href="${cpath}/users/viewDetail/'+ dto.idx + '"><div style="display: flex;"><img style="width: 44px; border-radius: 30px;" src="${cpath}/resources/img/userImg.jpg"><div>' + dto.nick_name + '</div></div></a>'
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
<!-- jquery 라이브러리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
