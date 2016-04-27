<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
                <a class="navbar-brand" href="admin.html">Admin</a>
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
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>


                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active">
                        <a href="admin.jsp"><i class="fa fa-fw fa-dashboard fa-2x"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="ad-ap.jsp"><i class="fa fa-fw fa-plus-square fa-2x"></i> Appointments</a>
                    </li>
                    <li>
                        <a href="ad-doc.jsp"><i class="fa fa-fw fa-user-md fa-2x"></i> Doctors</a>
                    </li>
                      <li>
                        <a href="ad-em.jsp"><i class="fa fa-fw fa-ambulance fa-2x"></i>Emergencies</a>
                    </li>
                    <li>
                        <a href="ad-pat.jsp"><i class="fa fa-fw fa-wheelchair fa-2x"></i> Patient</a>
                    </li>
                    <li>
                        <a href="ad-nur.jsp"><i class="fa fa-fw fa-desktop fa-2x"></i> Nurses</a>
                    </li>
                    <li>
                        <a href="ad-trans.jsp"><i class="fa fa-fw fa-credit-card fa-2x"></i> Transactions</a>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-2x fa-fw fa-hospital-o"></i> Monitor Hospital <i class="fa fa-2x fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                             
                             <li>
                                <a href="ad-hanal.jsp">Hospital Analytics</a>
                            </li>
                             <li>
                                <a href="ad-hbldbnk.jsp">Blood bank</a>
                            </li>

                            <li>
                                <a href="ad-heqp.jsp">Equipments</a>
                            </li>

                            <li>
                                <a href="ad-hrep.jsp">Reports</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="ad-phar.jsp"><i class="fa fa-fw fa-medkit fa-2x"></i> Pharmacy</a>
                    </li>
                    <li>
                        <a href="ad-wrd.jsp"><i class="fa fa-fw fa-heart fa-2x"></i> Wards
                        </a>
                    </li>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>



        
      <!--  <center>  <span  style="position: absolute;  top: 50%;transform: translateY(-50%);">  <i class="fa fa-3x fa-cog fa-spin"></i></span></center>-->
         <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                       <center> <h1 class="page-header">
                          Wards
                            
                        </h1></center>
                        
                    </div>

                </div>
                <!-- /.row -->

<div class="container">

     <sql:query  dataSource="${ds }" var="result">

select * from ward,patients where patients.pid=ward.pid;

</sql:query>

<sql:query  dataSource="${ds }" var="result1">

select count(*) from ward,patients where patients.pid=ward.pid;

</sql:query>
     
  <table class="table">
    <thead>
      <tr>
        <th>ward</th>
        <th>dept</th>
		<th>patients</th>
      </tr>
      
    </thead>
    <tbody>
    
    <c:forEach var="row" items="${result.rows }">   
      <tr>
        <td><c:out value="${row.ward_id}"> </c:out></td>
        <td><c:out value="${row.dept}"> </c:out></td>
   		<td>   
   		<select>  <option value="${row.pname}">${row.pname}</option>
   		</select>
   
   		
      </td>
  
      </tr>
    </c:forEach>
    </tbody>
    
  </table>
</div>

            </div>
            <!-- /.container-fluid -->

        </div>

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

 

</body>

</html>