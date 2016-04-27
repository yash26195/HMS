<!DOCTYPE html>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <title></title>
</head>
<body>
<sql:setDataSource var="ds" url="jdbc:mysql://localhost/hospital" user="root" password="" driver="com.mysql.jdbc.Driver" />

 <sql:query  dataSource="${ds }" var="result">

select * from doctor;

</sql:query>
    <form id="form1">
        <div>
            <select id="workField">
                 <c:forEach var="row" items="${result.rows }">   
 			  <option>
   			<c:out value="${row.concern}"> </c:out>
  			 </option>
			   </c:forEach>
            </select>
            <select id="occupetion">
                <option value="QA">QA</option>
                <option value="Food Industry">Food inspectur</option>
                <option value="Marketing">Selles man</option>
            </select>
        </div>
        <script>
            $("#workField").change(function () {
            	
            	<sql:query  dataSource="${ds }" var="result">

            	select * from doctor where concern="$(this).val()";

            	</sql:query>
                if ($(this).val() == "HI-TEC") {
                    $("#occupetion").val("QA");
                }
               
            });
        </script>
    </form>
</body>
</html>

