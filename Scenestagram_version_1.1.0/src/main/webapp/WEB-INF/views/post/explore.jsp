<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<style>
   .items {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      margin: 0 -10px;
   }
   .item {
      width: calc(33.33% - 20px);
      margin-bottom: 20px;
      margin-left: 10px;
      margin-right: 10px;
   }
   
   .list > .items > .item img {
   width: 300px;
   height: 300px;
   object-fit: cover;
   }

   .item p {
      margin-top: 10px;
      text-align: center;
   }
</style>

<div class="all_wrap">
   <div class="main_wrap">
      <div class="list">
         <div class="items">
            <c:forEach var="dto" items="${list }">      
            <div class="item">
               <a href="${cpath }/post/detail/${dto.post_idx }"><img src="${cpath}/upload/${dto.file_name }"></a>
            </div>         
            </c:forEach>         
         </div>
      </div>
   </div>
</div>

</body>
</html>