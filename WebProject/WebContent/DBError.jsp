<%@ page language="java" contentType="text/html; charset=UTF-8" isErrorPage="true"%>
<%response.setStatus(200); %>
<!DOCTYPE html>
<html>
	<head><title>JSP 도서관 - 에러페이지</title></head>
	<body>
		<h1 style="text-align:center"><a href='Home.jsp'>JSP 도서관</a></h1>
		<h3 style="text-align:center">에러페이지</h3>
        	<ul>
            	<li><a href='book-list'>목록</a></li>
                <li><a href="check-sort">대여량 기준 정렬</a></li>
                <li><a href="check-book">대여된 책</a></li>
                <li><a href="can-borrow-book">대여 가능한 책</a></li>
                <li><a href="BorrowForm.jsp">대여</a></li>
                <li><a href="return-book">반납</a></li>
                <li><a href="AddForm.jsp">추가</a></li>
        	</ul>
			<h3>모든 데이터를 입력하세요.</h3>
	</body>
</html>