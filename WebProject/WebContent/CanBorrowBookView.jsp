<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head><title>JSP 도서관 - 대여 가능한 책페이지</title></head>
	<body>
		<h1 style="text-align:center"><a href='Home.jsp'>JSP 도서관</a></h1>
		<h3 style="text-align:center">대여 가능한 책페이지</h3>
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
		<table style= "margin:0 auto; text-align:center" border=1>
			<tr>
				<td width=40>ID</td>
				<td width=300>이름 </td>
				<td width=90>저자 </td>
				<td width=90>가격</td>
				<td width=80>대여가능</td>
				<td width=80>대여횟수</td>
				<td width=80>추천</td>
			</tr>
			<c:forEach var="cnt" begin="0" end="${Book_LIST.listSize-1}">
				<tr>
					<td>${Book_LIST.id[cnt]}</td>
					<td>${Book_LIST.title[cnt]}</td>
					<td>${Book_LIST.writer[cnt]}</td>
					<td>${Book_LIST.price[cnt]}</td>
					<td>${Book_LIST.borrow[cnt]}</td>
					<td>${Book_LIST.count[cnt]}</td>
					<td>${Book_LIST.recommand[cnt]}</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>