<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head><title>JSP 도서관</title></head>
	<body>
		<h1 style="text-align:center"><a href='Home.jsp'>JSP 도서관</a></h1>
		<h3 style="text-align:center">에러페이지</h3>
		<%
			String ID = (String)session.getAttribute("ID");
			if(ID==null) out.println("<br><br>");
			else
				{
					out.println("<div align=right>"+ID+"님 </div><br>");
					out.println("<div align=right><a href=Logout.jsp>로그아웃</a></div>");
				}
		%>
        		<table style= "margin:0 auto; text-align:center" border=1 bgcolor='#d6eef8'>
        		<tr>
        		<td width=130><a href="SignUpForm.jsp">회원가입</a></td>
        		<td width=130><a href="LoginForm.jsp">로그인</a></td>
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
        	 <br><br><br><br><br>
			<h3 align="center">아이디와 패스워드를 확인해주세요.</h3>
	</body>
</html>