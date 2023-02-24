<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<style>
#root {
   overflow-x: hidden;
   overflow-y: hidden;
   background-color: #eee;
}
div.img-box .img {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 100%;
}
</style>
<%@ include file="../header.jsp"%>



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
                                       <div id="result">${hashtag }</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div style="text-align: center;">
                                게시물
                            </div>
<!--                             <div id="imgLine" class="flex"> -->
                               <div id="root" class="flex" offset="0"></div>
<!--                                     <div class="insta-post-item-middle"> -->
<!--                                         <div class="img-box"> -->
<%--                                             <img src="${cpath}/resources/img/insta-profile.jpg" alt=""> --%>
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



<script>
   const result = document.getElementById('result')
   const hashtag = result.innerText
   console.log(hashtag)
   
   function loadHandler(event) {
      const root = document.getElementById('root')
      const offset = root.getAttribute('offset')
      console.log(offset)
      
      const cur = root.scrollTop + root.clientHeight
      const flag = root.scrollHeight * 0.97 <= cur && cur <= root.scrollHeight * 1.03
      console.log(cur, flag)
      
      if(flag) {
      const url = '${cpath}/getPostList/' + hashtag +'/'+ offset;
         fetch(url)
         .then(resp => resp.json())
         .then(json => {
            console.log(json)
            
            json.forEach(dto => {
//                console.log(dto.post_idx)
//                console.log(dto.file_name)
               let tag = ''
               tag += '<div class="insta-post-item-middle">'
               tag += '<div class="img-box" style="width: 300px; height: 300px;">'
               tag += '<a href="${cpath}/post/detail/' + dto.post_idx + '"><img src="${cpath}/upload/' + dto.file_name + '"></a>'
               tag += '</div>'
               tag += '</div>'
               root.innerHTML += tag
               root.setAttribute('offset', offset + 30)
            })
         })
      }
      
   }
   
   window.onload = loadHandler
   root.onscroll = loadHandler
</script>


</body>
</html>