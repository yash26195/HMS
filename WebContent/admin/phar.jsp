<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

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
    <link href="../WebContent/css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->


    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<sql:setDataSource var="ds" url="jdbc:mysql://localhost/hms" user="root" password="" driver="com.mysql.jdbc.Driver" />
<div class="container">

     <sql:query  dataSource="${ds }" var="result">

select * from pharma,patients where patients.pid=pharma.pid;

</sql:query>



     
  <table class="table" style="color:white;">
    <thead>
      <tr>
		<th>name</th>
		       
        <th>medname</th>

		<th>cost</th>
		<th>Date</th>
		<th>Status</th>
		
      </tr>
      
    </thead>
    <tbody>
    
    <c:forEach var="row" items="${result.rows }">   
      <tr>
       <td><c:out value="${row.pname}"> </c:out></td>
        <td><c:out value="${row.medname}"> </c:out></td>

   		
      </td>
      
       
        <!-- <div class="col-md-10"> <button type="button" style="font-size:20px;" class="btn btn-primary"><i class="fa fa-check" style="font-size:15px;"></i></button></div> -->
     </div> </tr>
    </c:forEach>
    </tbody>
    
  </table>
</div>
            <!-- /.container-fluid -->

</body>
</html>