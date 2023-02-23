<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>

<div>추천</div>

<div id="recommend-friend"></div>


<script>
   
   const recofri = document.getElementById('recommend-friend')
   
   function loadHandler() {
      const url = '${cpath}/countFollowing/${login.idx}'
      fetch(url)
      .then(resp => resp.text())
      .then(text => {
      console.log(text)
      
      if(text == 0) {
         recommendFamous()
      }
         else {
            recommendHandler()
      }
         
      })
      
   }
   function recommendFamous() {
      const url = '${cpath}/recommendFamous/${login.idx}'
      fetch(url)
      .then(resp => resp.json())
      .then(json => {
         json.forEach(dto => {
            let tag = ''
            tag += '<div class="flex">'
            tag += '<a href="${cpath}/users/viewDetail/' + dto.idx + '"><div class="img-box">'
            tag += '<img class="" src="${cpath}/resources/img/insta-profile.jpg">추천회원img</img>'
            tag += '</div></a>'
            tag += '<a href="${cpath}/users/viewDetail/' + dto.idx + '"><div>' + dto.nick_name + '</div></a>'
            tag += '<div>팔로우</div>'
            tag += '</div>'
            recofri.innerHTML += tag
         })
      })
   }
   
   function recommendHandler() {
      const url = '${cpath}/recommendAll/${login.idx}'
      fetch(url)
      .then(resp => resp.json())
      .then(json => {
         console.log(json)

         json.forEach(dto => {
            console.log(dto.nick_name)
            console.log(dto.idx)
               let tag = ''
               tag += '<div class="flex">'
               tag += '<a href="${cpath}/users/viewDetail/' + dto.idx + '"><div class="img-box">'
               tag += '<img class="" src="${cpath}/resources/img/insta-profile.jpg">추천회원img</img>'
               tag += '</div></a>'
               tag += '<a href="${cpath}/users/viewDetail/' + dto.idx + '"><div>' + dto.nick_name + '</div></a>'
               tag += '<div>팔로우</div>'
               tag += '</div>'
               recofri.innerHTML += tag
   
         })
      })
      
   }
   
   document.body.onload = loadHandler

</script>

</body>
</html>