<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
	<head><title>JSP 도서관 - 추가페이지</title></head>
	<body>
		<h1 style="text-align:center"><a href='Home.jsp'>JSP 도서관</a></h1>
		<h3 style="text-align:center">추가페이지</h3>
        	<ul>
            	<li><a href='book-list'>목록</a></li>
                <li><a href="check-sort">대여량 기준 정렬</a></li>
                <li><a href="check-book">대여된 책</a></li>
                <li><a href="can-borrow-book">대여 가능한 책</a></li>
                <li><a href="BorrowForm.jsp">대여</a></li>
                <li><a href="return-book">반납</a></li>
                <li><a href="AddForm.jsp">추가</a></li>
        	</ul>
	<form action="add-book" method="post">
			<table style= "margin:0 auto; text-align:center" border=1>
			<tr>
				<td>ID</td>
				<td><input type=text name=IDD size=60/></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type=text name=TITLEE size=60/></td>
			</tr>
			<tr>
				<td>저자</td>
				<td><input type=text name=WRITERR size=60/></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input type=text name=PRICEE size=60/></td>
			</tr>
			</table>
			<input style="text-align:center" type=submit value='확인'/>
		</form>
	</body>
</html>
