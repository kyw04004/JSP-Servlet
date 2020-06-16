<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
	<head><title>JSP 도서관 - 검색페이지</title></head>
	<body>
		<h1 style="text-align:center"><a href='Home.jsp'>JSP 도서관</a></h1>
		<h3 style="text-align:center">검색페이지</h3>
        	<ul>
        		<li><a href="SearchForm.jsp">검색</a></li>
        		<li><a href="recommand-book">추천순위</a></li>
            	<li><a href='book-list'>목록</a></li>
                <li><a href="check-sort">대여량 기준 정렬</a></li>
                <li><a href="check-book">대여된 책</a></li>
                <li><a href="can-borrow-book">대여 가능한 책</a></li>
                <li><a href="BorrowForm.jsp">대여</a></li>
                <li><a href="return-book">반납</a></li>
                <li><a href="AddForm.jsp">추가</a></li>
                <li><a href="delete-book">삭제</a></li>
        	</ul>
	<form action="search-title-book" method="post">
			책 이름 : <input type=text name=NAME size=50>
			<input type=submit value='확인'/> <br>
	</form>
	<form action="search-writer-book" method="post">
		   	    저자 : <input type=text name=WRITER size=50>
			<input type=submit value='확인'/>
		</form>
	</body>
</html>
