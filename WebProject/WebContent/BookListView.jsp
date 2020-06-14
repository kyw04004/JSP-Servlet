<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head><title>JSP 도서관 - 목록페이지</title></head>
	<body>
		<h1 style="text-align:center"><a href='Home.jsp'>JSP 도서관</a></h1>
		<h3 style="text-align:center">목록페이지</h3>
        	<ul>
            	<li><a href='book-list'>목록</a></li>
                <li><a href="check-sort">대여량 기준 정렬</a></li>
                <li><a href="check-book">대여된 책</a></li>
                <li><a href="can-borrow-book">대여 가능한 책</a></li>
                <li><a href="BorrowForm.jsp">대여</a></li>
                <li><a href="return-book">반납</a></li>
                <li><a href="AddForm.jsp">추가</a></li>
        	</ul>
		<table style= "margin:0 auto; text-align:center" border=1>
			<tr>
				<td width=40>ID</td>
				<td width=300>이름 </td>
				<td width=90>저자 </td>
				<td width=90>가격</td>
				<td width=80>대여가능</td>
				<td width=80>대여횟수</td>
			</tr>
			<c:forEach var="cnt" begin="0" end="${Book_LIST.listSize-1}">
				<tr>
					<td>${Book_LIST.id[cnt]}</td>
					<td>${Book_LIST.title[cnt]}</td>
					<td>${Book_LIST.writer[cnt]}</td>
					<td>${Book_LIST.price[cnt]}</td>
					<td>${Book_LIST.borrow[cnt]}</td>
					<td>${Book_LIST.count[cnt]}</td>
				</tr>
			</c:forEach>
		</table>
		<c:if test="${!Book_LIST.firstPage}">
			<a href='book-list?LAST_SEQ_NO=${Book_LIST.id[0] -6 }'>
				<h5 style="text-align:left">이전페이지</h5>
			</a>
		</c:if>
		<c:if test="${!Book_LIST.lastPage}">
			<a href='book-list?LAST_SEQ_NO=${Book_LIST.id[Book_LIST.listSize-1]}'>
				<h5 style="text-align:right">다음페이지</h5>
			</a>
		</c:if>
	</body>
</html>