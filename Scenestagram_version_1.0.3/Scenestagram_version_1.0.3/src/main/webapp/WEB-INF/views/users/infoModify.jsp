<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
/* ------인포 모디파이 스타일--------*/
html{
	background-color: black;
}
.main_wrap{

  display: flex;
  justify-content: center;
  color:white;
  padding: 30px 0 30px 0;
  
}  

#info_submit_btn{
	border: none;
    background-color: rgb(0,149,246);
    width: 66px;
    color: rgb(255,255,255);
}

#introduce > textarea{
	resize: vertical; 
 	width: 217px;
  	height: 75px;
  	max-height: 174px;
  	border: 2px solid rgb(85,85,85);
  	min-height: 75px;
}

.info_gender  select{
	 background: transparent;
	 border-radius: 3px;
	 box-sizing: border-box;
	 color: rgb(250,250,250);
	 flex: 0 1 355px;
	 font-size: 16px;
	 height: 32px;
	 padding: 0 10px;
     width: 217px;
     border: 1px solid rgb(85,85,85);
}

/* 모든 a태그 설정*/
a{
  text-decoration: none;
  color: black;

}

/* 사이드 바 */
.info_side{
  height: 887px;
  width: 236px;
  border: 1px solid rgb(85,85,85);
}
.info_side > div{
  width: 238px;
  height: 51px;
  display: block;
  text-align: center;
  line-height: 3;
  cursor: pointer; 
}

/* 섹션 탑 flex화 */
.info_section_top{
  display: flex;
  margin: 40px 0 40px 0;
}

/* 섹션 이미지 div설정 */
.info_section_top >:nth-child(1){
  width: 194px;
  padding-right: 36px;
  text-align: right;
  box-sizing: border-box;
  
}

.info_side > div:nth-child(1){
  border-left: 3px solid rgb(219, 219, 219);
}

.info_side > div:nth-child(2):hover {
  border-left: 3px solid rgb(219, 219, 219);
}

.info_submit_{
  display: flex;
  justify-content: space-between;
  width: 374px;
}



/* 개인정보 섹션*/
.info_section {
  border: 1px solid rgb(85,85,85);
  width: 599px;
  height: 887px;

}

/*폼안에 div들 flex화 */
.info_section_main>form>div {
  display: flex;
  margin: 60px 0 60px 0;
}

/* 섹션 테그*/
.info_section_main>form>div> :nth-child(1) {
  width: 194px;
  text-align: right;
  padding-right: 36px;
  box-sizing: border-box;
  font-weight: bold;
  
}

.info_section_main input,textarea{
  width: 355px;
  background: transparent;
  border-radius: 3px;
  box-sizing: border-box;
  color: rgb(250,250,250);
  flex: 0 1 355px;
  font-size: 16px;
  height: 32px;
  padding: 0 10px;
  width: 100%;
  border: 1px solid rgb(85,85,85);
}

.info_submit_ a{
	color: #0095f6;
    font-weight: bold;
} 

.info_top_img > img{
	width: 40px;
    border-radius: 30px;
} 

/* ---infoModify 모달 ---*/
        .modal_bg{
            width: 100%;
            height: 100%;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            background-color: rgba(0,0,0,0.6);
            z-index: 999;
        }

        .modal_wrap{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 400px;
            height: 300px;
            background: #fff;
            z-index: 1000;
            border-radius: 20px;
        }

        .modal_wrap_sub{
            display: flex;
            flex-flow: column;
            justify-content: center;            
        }

        .modal_foot div{
            width: 100%;

        }
        button{
            border: none;
            background-color: white;
            width: 100%;
            height: 54px;
            font-size: 17px;
            border-top: 1px solid #dadada;
        }

        .modal_top{
            text-align: center;
        }
        .modal_tip{
            font-size: 20px;
            height: 36px;
        }
        .modal_img {
            height: 88px;
        }
        .modal_logo_name{
            height: 43px;
        }
        .hidden{
        	display: none;
        }
        .modal_img > img{
        	 width: 73px;
   			 margin-top: 10px;
        }
/* ---infoModify 모달 end ---*/


/* ------인포 모디파이 스타일 end--------*/
</style>
</head>
<body>

	

	<div>
		
	</div>

  <div class="all_wrap">

    <div class="main_wrap">

      <!-- 사이드 탭-->
      <div class="info_side">
        <div>프로필 편집</div>
        <div>비밀번호 변경</div>
      </div>
      <!-- 사이드 탭 end-->

      <div class="info_section">

        <!-- 상단 프로필 이미지 와 닉네임 사진변경 -->
        <div class="info_section_top">

          <div class="info_top_img">
            <img src="${cpath }/resources/img/userImg.jpg">
          </div>

          <div>
            <div class="ingo_top_right">
              <div class="info_nickName">${login.nick_name }</div>
              <div class="info_change_img">프로필 사진 바꾸기</div>
            </div>
          </div>
        </div>
        <!-- 상단 프로필 이미지 와 닉네임 사진변경 end-->

        <!-- form문 html코드-->
        <div class="info_section_main">
          <form action="${cpath }/users/infoModify" method="POST">

            <div class="info_name">
              <div>이름</div>
              <div><input type="text" name="name" value="${login.name }" readonly></div>
            </div>

            <div class="info_ncikName">
              <div>닉네임</div>
              <div><input type="text" name="nick_name" value="${login.nick_name }"></div>
              <div></div>
            </div>

            <div class="info_introduce">
              <div>소개</div>
              <div id="introduce"><textarea maxlength="150" name="introduce">${login.introduce }</textarea></div>
            </div>

            <div class="info_email">
              <div>이메일</div>
              <div><input type="text" name="email" value="${login.email }"></div>
            </div>
			
            <div class="info_phoneNumber">
              <div>전화번호</div>
              <div><input type="text" name="phone_number" value="${login.phone_number}" readonly></div>
            </div>
			
            <div class="info_gender">
              <div>성별</div>
              <div>
                <select name="gender">
                  <option disabled value="">성별</option>
                  <option value="남성" ${login.gender=='남성' ? 'selected' : '' }>남자</option>
                  <option value="여성" ${login.gender=='여성' ? 'selected' : '' }>여자</option>
                </select>
              </div>
            </div>

            <div>
              <div></div>
              <div class="info_submit_">
                <div><input id="info_submit_btn" type="submit" value="제출"></div>
                <div><a href="">일시적으로 계정 비활성화</a></div>
              </div>

            </div>

          </form>
        </div>
        <!-- form문 html코드 end-->

      </div>
    </div>
  </div>
  <!--  모달  -->
    <div class="modal_bg hidden"></div>
    <div class="modal_wrap hidden">
        <div class="modal_wrap_sub">
            <div class="modal_top">
                <div class="modal_img"><img src="${cpath }/resources/img/userImg.jpg"></div>
                <div class="modal_tip">사용자의 프로필 사진</div>
                <div class="modal_logo_name">Scenestagram</div>
            </div>

            <div>
                <div class="modal_foot">
                    <div><button>사진 업로드</button></div>   
                    <div class="modal_foot_btn"><button>취소</button></div>   
                </div>
            </div>
        </div>
    </div>
      <!--  모달  end -->
    <script>
    	const modal_bg = document.querySelector('.modal_bg')
    	const modal_wrap = document.querySelector('.modal_wrap')
    	const info_change_img = document.querySelector('.info_change_img')
    	const modal_foot_btn = document.querySelector('.modal_foot_btn')
    	
    	function info_modalHandelr() {
			modal_bg.classList.remove('hidden')
			modal_wrap.classList.remove('hidden')
		}
    	
    	info_change_img.onclick = info_modalHandelr
    	
    	function info_closeModalHandler() {
			modal_bg.classList.add('hidden')
			modal_wrap.classList.add('hidden')
		}
    	
    	modal_foot_btn.onclick = info_closeModalHandler
    	modal_bg.onclick = info_closeModalHandler
    	

    </script>

</body>
</html>