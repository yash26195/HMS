<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="ds" url="jdbc:mysql://localhost/hms" user="root" password="" driver="com.mysql.jdbc.Driver" />
   <sql:query  dataSource="${ds }" var="result">

					select * from patients where pemail="<%=request.getAttribute("email") %>";

</sql:query> 
  <table class="table" border="2" cellspacing="5" cellpadding="5" style="width:200 ; height:150">
   
    <tbody>
        <c:forEach var="row" items="${result.rows }">   
      <tr>  <th>Name</th><td><c:out value="${row.pname}" > </c:out></td></tr>
       <tr> <th>Email</th> <td><c:out value="${row.pemail}" > </c:out></td></tr>
      <tr><th>Contact</th>  <td><c:out value="${row.pphno}" > </c:out></td></tr>
        <tr> <th>Description</th><td><c:out value="${row.description}" > </c:out></td></tr>
      <tr><th>Doctor</th>  <td><c:out value="${row.doctor}" > </c:out></td></tr>
        
         </c:forEach>
     
    </tbody>
  </table>

</body>
</html>