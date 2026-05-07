<%@page import="com.bean.Employee"%>
<%@page import="com.dao.Studentdao"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1" width="100%" cellpadding="10px" cellspacing="10px">
	<tr>
		<th>EPID</th>
		<th>FIRST NAME</th>
		<th>LAST NAME</th>
		<th>EMAIL</th>
		<th>MOBILE</th>
		<th>EID</th>
		<th>DNAME</th>
		<th>SALARY</th>
		<th>EDIT</th>
		<th>DELETE</th>
		
	</tr>
<%
	List<Employee> list = Studentdao.getAllEmployee();
	for(Employee s:list){
	
%>

	<tr>
		<td><%=s.getEinfo().getEinfo()%></td>
		<td><%=s.getEinfo().getFname()%></td>
		<td><%=s.getEinfo().getLname()%></td>
		<td><%=s.getEinfo().getEmail()%></td>
		<td><%=s.getEinfo().getMobile()%></td>
		<td><%=s.getDid()%></td>
		<td><%=s.getDname()%></td>
		
		
		<td>
			<form name="edit" method="post" action="EmployeeController">
				<input type="hidden" name="did" value="<%=s.getDid()%>">
				<input type="submit" name="action" value="EDIT">
			</form>
			
		
		</td>
		<td>
			<form name="delete" method="post" action="StudentController">
				<input type="hidden" name="id" value="<%=s.getDid()%>">
				<input type="submit" name="action" value="DELETE">
			</form>
		</td>
	</tr>

<%

}
%>
</table>

</body>
</html>