<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
		tr,td{
		padding: 10px;
		
		}
</style>
</head>
<body>

<form name="insert" method="post" action="EmployeeController">
	<table>
		<tr>
			<td>First Name: </td>
			<td><input type="text" name="fname"></td>
		</tr>
		
		<tr>
			<td>Last Name: </td>
			<td><input type="text" name="lname"></td>
		</tr>
		
		<tr>
			<td>Email: </td>
			<td><input type="text" name="email"></td>
		</tr>
		
		<tr>
			<td>Mobile : </td>
			<td><input type="text" name="mobile"></td>
		</tr>
		
		<tr>
			<td>Department name </td>
			<td><input type="text" name="dname"></td>
		</tr>
		<tr>
			<td>Salary </td>
			<td><input type="text" name="salary"></td>
		</tr>
		
		
		
		<tr>
		<td colspan="2" align="center">
				<input type="submit" name="action" value="insert">
		</td>
		</tr>
	
	</table>
	<a href="show.jsp">show all Employee</a>


</form>

</body>
</html>