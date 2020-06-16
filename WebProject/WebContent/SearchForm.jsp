<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
	<head><title>JSP 도서관 - 검색페이지</title></head>
	<body>
		<h1 style="text-align:center"><a href='Home.jsp'>JSP 도서관</a></h1>
		<h3 style="text-align:center">검색페이지</h3>
        	<table style= "margin:0 auto; text-align:center" border=1 bgcolor='#d6eef8'>
        		<tr>
        		<td width=130><a href="SearchForm.jsp">검색</a></td>
        		<td width=130><a href="recommand-book">추천순위</a></td>
            	<td width=130><a href='book-list'>목록</a></td>
               <td width=130><a href="check-sort">대여량 기준 정렬</a></td>
               <td width=130><a href="check-book">대여된 책</a></td>
               <td width=130><a href="can-borrow-book">대여 가능한 책</a></td>
               <td width=130><a href="BorrowForm.jsp">대여</a></td>
               <td width=130><a href="return-book">반납</a></td>
               <td width=130><a href="AddForm.jsp">추가</a></td>
               <td width=130><a href="delete-book">삭제</a></td>
               </tr>
        	</table>
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
