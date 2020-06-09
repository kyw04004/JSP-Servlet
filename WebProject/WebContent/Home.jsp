<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head><title>JSP 도서관 - 홈페이지</title></head>
	<body>
		<h1 style="text-align:center"><a href='Home.jsp'>JSP 도서관</a></h1>
		<h3 style="text-align:center">홈페이지</h3>
		<h4 style="text-align:center">왼쪽의 메뉴를 이용해주세요!</h4>
        	<ul>
            	<li><a href='book-list'>목록</a></li>
                <li><a href="check-sort">대여량 기준 정렬</a></li>
                <li><a href="check-book">대여된 책</a></li>
                <li><a href="can-borrow-book">대여 가능한 책</a></li>
                <li><a href="borrow-book">대여</a></li>
                <li><a href="return-book">반납</a></li>
                <li><a href="add-book">추가</a></li>
        	</ul>
	</body>
</html>