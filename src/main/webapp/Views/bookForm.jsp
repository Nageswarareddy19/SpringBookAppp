<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book App</title>

</head>
<font color='green'>${msg}</font>
<body>

	<form:form action="/register" method="post" modelAttribute="book">
		<table>

			<tr>
				<td>Book ID</td>
				<td><form:input path="bookId" /></td>
			</tr>

			<tr>
				<td>Book Name</td>
				<td><form:input path="bookName" /></td>
			</tr>

			<tr>
				<td>Book Cost</td>
				<td><form:input path="bookPrice" /></td>
			</tr>

			<tr>
				<td>Book Author</td>
				<td><form:input path="author" /></td>
			</tr>


			<tr>
				<td><input type="submit" value="submit"></td>
				<td><input type="reset" value="clear">
			</tr>
		</table>
		<hr>

	</form:form>

	<c:if test="${bookinfo.size()>0}">
		<table border="1" bgcolor="cyan">
			<tr>
				<th>Book Id</th>
				<th>Book Name</th>
				<th>Book Price</th>
				<th>Book Author</th>
			</tr>
			<c:forEach var="book" items="${bookinfo}">
				<tr>
					<td>${book.bookId}</td>
					<td>${book.bookName}</td>
					<td>${book.bookPrice}</td>
					<td>${book.author}</td>

				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>