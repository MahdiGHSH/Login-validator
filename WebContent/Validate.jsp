<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validation Page</title>
</head>
<body>
<%
//JDBC driver name and database URL
//STEP 2: Register JDBC driver%>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"

url="jdbc:mysql://localhost:3306/EMP?serverTimezone=Australia/Melbourne"
 user="root" password="Mahdi2281374"/>
<%
//Getting Request parameters
%>
<c:set var = "uname" scope = "session" value="${param.uname}"/>

<c:set var = "id" scope = "session" value="${param.id}"/>

<% //STEP 3: Open a connection
//STEP 4: Execute a query%>
<sql:query dataSource="${snapshot}" var="result">
select count(*) as kount from Employees
 where uname = ? 
<sql:param value="${uname}" />
</sql:query>
<%//STEP 5: Extract data from result set%>
<c:forEach items="${result.rows}" var="r">
 <c:choose>
 <c:when test="${r.kount > 0}">
 <c:out value="Dear ${uname}, you are succesfully logged in"/>
 </c:when>
 <c:otherwise>
 <c:out value="Warning!!! The entered User name or Password is not correct"/>
 <br>
 <a href="Login.jsp">Try Again</a>
 </c:otherwise>
 </c:choose>
</c:forEach>
<br>

</body>
</html>