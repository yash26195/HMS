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
    <link href="css/plugins/morris.css" rel="stylesheet">

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
 <div id="wrapper">


        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/hosp/admin/admin.jsp">Admin</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu message-dropdown">
                        <li>
                         <a href="#"><i class="fa fa-fw  fa-2x fa-inbox"></i>Inbox</a>
                        </li>
                        <li>
                       <a href="#"><i class="fa fa-fw fa-2x fa-pencil-square-o"></i>Create </a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu alert-dropdown">
                        <li>
                            <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">View All</a>
                        </li>
                    </ul>
                </li>
                
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active">
                        <a href="/hosp/admin/admin.jsp"><i class="fa fa-fw fa-dashboard fa-2x"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="/hosp/admin/ad-ap.jsp"><i class="fa fa-fw fa-plus-square fa-2x"></i> Appointments</a>
                    </li>
                    <li>
                        <a href="/hosp/admin/ad-doc.jsp"><i class="fa fa-fw fa-user-md fa-2x"></i> Doctors</a>
                    </li>
                     
                    <li>
                        <a href="/hosp/admin/ad-pat.jsp"><i class="fa fa-fw fa-wheelchair fa-2x"></i> Patient</a>
                    </li>
                    <li>
                        <a href="/hosp/admin/ad-nur.jsp"><i class="fa fa-fw fa-desktop fa-2x"></i> Nurses</a>
                    </li>
                    <li>
                        <a href="/hosp/admin/ad-trans.jsp"><i class="fa fa-fw fa-credit-card fa-2x"></i> Transactions</a>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-2x fa-fw fa-hospital-o"></i> Monitor Hospital <i class="fa fa-2x fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                             
                             <li>
                                <a href="/hosp/admin/ad-hanal.jsp">Hospital Analytics</a>
                            </li>
                             <li>
                                <a href="/hosp/admin/ad-hbldbnk.jsp">Blood bank</a>
                            </li>

                            <li>
                                <a href="/hosp/admin/ad-heqp.jsp">Equipments</a>
                            </li>

                            
                        </ul>
                    </li>
                    <li>
                        <a href="/hosp/admin/ad-phar.jsp"><i class="fa fa-fw fa-medkit fa-2x"></i> Pharmacy</a>
                    </li>
                    <li>
                        <a href="/hosp/admin/ad-wrd.jsp"><i class="fa fa-fw fa-heart fa-2x"></i> Wards
                        </a>
                    </li>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>


        
      <!--  <center>  <span  style="position: absolute;  top: 50%;transform: translateY(-50%);">  <i class="fa fa-3x fa-cog fa-spin"></i></span></center>-->
         <div id="page-wrapper">

      <div class="container">

     <sql:query  dataSource="${ds }" var="result">

select * from pharma,patients where patients.pid=pharma.pid;

</sql:query>



     
  <table class="table">
    <thead>
      <tr>
		<th>name</th>
		       
        <th>medname</th>

	
		<th>Status</th>
		
      </tr>
      
    </thead>
    <tbody>
    
    <c:forEach var="row" items="${result.rows }">   
      <tr>
       <td><c:out value="${row.pname}"> </c:out></td>
        <td><c:out value="${row.medname}"> </c:out></td>
        
        
     <td>  <form action="<%=request.getContextPath() %>/Admin?action=stat&phar_id=<c:out value="${row.phar_id}"></c:out>" method="post"> <input name="status" type="text" placeholder="${row.status}"></input>
     <button type="submit"><i class="fa fa-check" style="font-size:15px;"></i></button>
   		
      </td>
      
       
        <!-- <div class="col-md-10"> <button type="button" style="font-size:20px;" class="btn btn-primary"><i class="fa fa-check" style="font-size:15px;"></i></button></div> -->
     </div> </tr>
    </c:forEach>
    </tbody>
    
  </table>
</div>
            <!-- /.container-fluid -->

        </div>

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    
</body>

</html>