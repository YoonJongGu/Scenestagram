<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<form method="POST">
	<p><input type="text" name="search" placeholder="검색"></p>
	<p><input type="submit" value="검색"></p>
</form>

<table>
  <tr>
    <th>이름</th>
  </tr>
  <c:forEach var="dto" items="${list }">
	  <tr>
	    <td>${dto.name }</td>
	  </tr>
  </c:forEach>
</table>


</body>
</html>