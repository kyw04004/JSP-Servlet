<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head><title>JSP 도서관 - 대여페이지</title></head>
	<body>
		<h1 style="text-align:center"><a href='Home.jsp'>JSP 도서관</a></h1>
		<h3 style="text-align:center">대여페이지</h3>
        	<ul>
            	<li><a href='book-list'>목록</a></li>
                <li><a href="check-sort">대여량 기준 정렬</a></li>
                <li><a href="check-book">대여된 책</a></li>
                <li><a href="can-borrow-book">대여 가능한 책</a></li>
                <li><a href="BorrowForm.jsp">대여</a></li>
                <li><a href="return-book">반납</a></li>
                <li><a href="AddForm.jsp">추가</a></li>
                <li><a href="delete-book">삭제</a></li>
        	</ul>
			<h3>대여할 수 없습니다.</h3>
	</body>
</html>