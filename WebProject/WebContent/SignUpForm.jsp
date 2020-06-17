<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
	<head><title>JSP 도서관 - 회원가입페이지</title></head>
	<body>
		<h1 style="text-align:center"><a href='Home.jsp'>JSP 도서관</a></h1>
		<h3 style="text-align:center">회원가입페이지</h3>
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
	<form action="sign-up" method="post">
			<table style= "margin:0 auto; text-align:center" border=1>
			<tr>
				<td>ID</td>
				<td><input type=text name=ID size=60/></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type=text name=NAME size=60/></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type=password name=PASSWORD size=60/></td>
			</tr>
			<tr>
				<td>핸드폰번호</td>
				<td><input type=text name=PHONENUM size=60/></td>
			</tr>
			</table>
			<div align="center"><input style="text-align:center" type=submit value='확인'/></div>
		</form>
	</body>
</html>
