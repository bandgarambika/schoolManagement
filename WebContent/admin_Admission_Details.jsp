<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<!-- Title -->
<title>School Management System</title>
<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">
<!-- Core Stylesheet -->
<link rel="stylesheet" href="style.css">
<style>
td, th {
	text-align: center;
	height: 50px;
}

tr {
	height: 30px;
}

th {
	height: 40px;
	background: #a9d0f5;
}

table {
	margin-top: 40px;
}

body {
	background: #ffffff0d;
}

.btn {
	background-color: #61BA6D;
	color: white;
	padding: 7px 25px;
	font-size: 14px;
	cursor: pointer;
}
</style>
</head>
<body>

	<h6>
		<center>
			<form>
				<table border="1" cellpadding="10" cellspacing="10" width="80%">
					<tbody>
						<tr>
							<th width="10%" align="center"><strong>Sr No.</strong></th>
							<th width="10%" align="center"><strong>Class Name</strong></th>
							<th width="10%" align="left"><strong>Alloted
									Admissions</strong></th>
							<th width="15%" align="left"><strong>Vacancies</strong></th>
							<th width="10%" align="left"><strong>class Strength</strong></th>

						</tr>
						<%
						try {
							String staff_depart = request.getParameter("department");
							Class.forName("com.mysql.jdbc.Driver");
							java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms", "root", "vijay");
							ResultSet rs;
							PreparedStatement ps = con.prepareStatement("select * from classes");
							//ps.setString(1,staff_depart);
							rs = ps.executeQuery();
							while (rs.next()) {
						%>
						<tr>
							<td><%=rs.getString("class_id")%></td>
							<td><%=rs.getString("class_name")%></td>
							<td><%=rs.getString("confirm_admission")%></td>
							<td><%=rs.getString("pending_admission")%></td>
							<td><%=rs.getString("class_strength")%></td>
						</tr>
						</form>
						<%
						}

						} catch (Exception e) {
						e.printStackTrace();
						}
						%>


					</tbody>
				</table>
				<br>
		</center>
</body>

</html>