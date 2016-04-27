<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="ds" url="jdbc:mysql://localhost/hms" user="root" password="" driver="com.mysql.jdbc.Driver" />
<div class="container" >


     <sql:query  dataSource="${ds }" var="result">

SELECT pname, pemail, pphno, description, ward
FROM patients
WHERE patients.doctor = (select dname from doctor where demail="<%=request.getAttribute("status") %>")
</sql:query>


     
  <table class="table" style="color:white;">
    <thead>
      <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Description</th>
		<th>Ward</th>
		
      </tr>
      
    </thead>
    <tbody>
    
    <c:forEach var="row" items="${result.rows }">   
      <tr>
        <td><c:out value="${row.pname}"> </c:out></td>
        <td><c:out value="${row.pemail}"> </c:out></td>
        <td><c:out value="${row.description}"> </c:out></td>
        <td><c:out value="${row.ward}"> </c:out></td>
  
       <td>
      
            <a href="<%=request.getContextPath() %>/Admin?action=pres&email=<c:out value="${row.pemail }"></c:out>"> 
     <i class="fa fa-2x fa-trash-o" > </i></a>
         
       
       
       <!-- <div class="col-md-10"> <button type="button" style="font-size:20px;" class="btn btn-primary"><i class="fa fa-check" style="font-size:15px;"></i></button></div> --></td>
     </tr>
    </c:forEach>
    </tbody>
    
  </table>
</div>

            </div>

</body>
</html>