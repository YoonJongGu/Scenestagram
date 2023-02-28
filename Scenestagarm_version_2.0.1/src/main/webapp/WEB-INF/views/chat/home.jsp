<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<style>
    /* * {border: 1px dashed red;} */
    body {background-color: #0f0f0f; color: white;}
    ul, li {list-style: none; box-sizing: border-box; margin: 0; padding: 0;}
    
    .flex{display: flex;}
    .column{flex-direction: column;}

    .dm-box {
        display: flex;
        flex-direction: row;
        /* align-items: center; */
        justify-content: center;
        border: 1px solid #ddd;

    }

    

    .dm-top {text-align: center; height: 10%;}

    .dm-middle {
        display: flex;
    }
    .dm-box-right {
        display: flex;
        justify-content: center;
        flex: 0 0 auto;
        min-height: 0;
        min-width: 47%;
    }
    .dm-box-left {
        display: flex;
        justify-content: center;
        flex: 0 0 auto;
        min-height: 100%;
        
    }
    .item > div:first-child {
        width: 30%;
    }

    .item > div img {
        border-radius: 50%;
        width: 100%;
        height: 100%;
    }

    .dm-box > * {
        border: 1px solid #ddd;
    }
    .dm-content{
        overflow-y: scroll;
    }
    .item:hover {
        background-color: #ddd;
    }
</style>

<!-- <div id="room"> -->
<%-- 	<c:forEach var="room" items="${list }"> --%>
<%-- 		<div>룸 IDX : ${room.IDX }</div> --%>
<%-- 		<div>상대방 회원 IDX : ${room.USERS_IDX }</div> --%>
<%-- 		<div><a href="${cpath }/chat/main?room_idx=${room.IDX }">상대방 회원 닉네임 : ${room.NICK_NAME }</a></div> --%>
<%-- 	</c:forEach> --%>
<!-- </div> -->

<div style="width: 1000px; margin: auto;">

    <div class="dm-box">
        <div class="dm-box-left">
            <div style="text-align: center; margin: 0; overflow: hidden;">
                    <div class="dm-top">
                        <div style="height: 100%; border-bottom: 1px solid #ddd;">cha_ni__</div>
                    </div>
                
                    <ul class="dm-content">
                        <!-- dm 아이템 loop -->
                        <li class="item flex">
                            <div>
                                <img src="instagram (1)/img/insta-profile.jpg" alt="">
                            </div>
                            <div>
                                <div>유저네임</div>
                                
                                <span>대화내용</span>
                                <span>·</span>
                                <span>2일</span>
        
                            </div>
                        </li>
                        <li class="item flex">
                            <div>
                                <img src="instagram (1)/img/insta-profile.jpg" alt="">
                            </div>
                            <div>
                                <div>유저네임</div>
                                
                                <span>대화내용</span>
                                <span>·</span>
                                <span>2일</span>
        
                            </div>
                        </li>
                        
                        <li class="item flex">
                            <div>
                                <img src="instagram (1)/img/insta-profile.jpg" alt="">
                            </div>
                            <div>
                                <div>유저네임</div>
                                
                                <span>대화내용</span>
                                <span>·</span>
                                <span>2일</span>
        
                            </div>
                        </li>
                        <li class="item flex">
                            <div>
                                <img src="instagram (1)/img/insta-profile.jpg" alt="">
                            </div>
                            <div>
                                <div>유저네임</div>
                                
                                <span>대화내용</span>
                                <span>·</span>
                                <span>2일</span>
        
                            </div>
                        </li>
                        <li class="item flex">
                            <div>
                                <img src="instagram (1)/img/insta-profile.jpg" alt="">
                            </div>
                            <div>
                                <div>유저네임</div>
                                
                                <span>대화내용</span>
                                <span>·</span>
                                <span>2일</span>
        
                            </div>
                        </li>
                        <li class="item flex">
                            <div>
                                <img src="instagram (1)/img/insta-profile.jpg" alt="">
                            </div>
                            <div>
                                <div>유저네임</div>
                                
                                <span>대화내용</span>
                                <span>·</span>
                                <span>2일</span>
        
                            </div>
                        </li>
                        <li class="item flex">
                            <div>
                                <img src="instagram (1)/img/insta-profile.jpg" alt="">
                            </div>
                            <div>
                                <div>유저네임</div>
                                
                                <span>대화내용</span>
                                <span>·</span>
                                <span>2일</span>
        
                            </div>
                        </li>
                        <!-- dm 아이템 loop end -->
                    </ul>
                </div>
        
            </div>
        <div class="dm-box-right">
            <div style="text-align: center; margin: 50% 0;">
                <svg aria-label="Direct" class="_ab6-" color="rgb(245, 245, 245)" fill="rgb(245, 245, 245)" height="96" role="img" viewBox="0 0 96 96" width="96"><circle cx="48" cy="48" fill="none" r="47" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></circle><line fill="none" stroke="currentColor" stroke-linejoin="round" stroke-width="2" x1="69.286" x2="41.447" y1="33.21" y2="48.804"></line><polygon fill="none" points="47.254 73.123 71.376 31.998 24.546 32.002 41.448 48.805 47.254 73.123" stroke="currentColor" stroke-linejoin="round" stroke-width="2"></polygon></svg>
                <div>내 메세지</div>
                <div>친구에게 사진과 메시지를 보내보세요</div>
                <div>
                    <button>메시지 보내기</button>
                </div>
            </div>
        </div>
    </div>
</div>


<div id="test"
	 style="width: 100px; height: 100px; background-color: red"></div>
<script>
	document.getElementById('test').oncontextmenu = (event) => {
		event.preventDefault()
		event.target.style.backgroundColor = 'blue'
	}
</script>

</body>
</html>