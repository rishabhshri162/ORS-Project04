<%@page import="in.co.rays.proj4.controller.ORSView"%>
<%@page import="in.co.rays.proj4.controller.LoginCtl"%>
<%@page import="in.co.rays.proj4.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		UserBean user = (UserBean) session.getAttribute("user");
	%>
	<%
		if (user != null) {
	%>
	<h3>
		Hi,
		<%=user.getFirstName()%>
		(<%=session.getAttribute("role")%>)
	</h3>
	
	<a href=<%=ORSView.USER_CTL%>><b>Add User</b></a>
	<b>|</b>
	<a href="UserListCtl"><b>User List</b></a>
	<b>|</b>
	<a href="RoleCtl"><b>Add Role</b></a>
	<b>|</b>
	<a href="RoleListCtl"><b>Role List</b></a>
	<b>|</b>
	<a href="CollegeCtl"><b>Add College</b></a>
	<b>|</b>
	<a href=<%=ORSView.COLLEGE_LIST_CTL%>><b>College List</b></a>
	<b>|</b>
	<a href="StudentCtl"><b>Add Student</b></a>
	<b>|</b>
	<a href=<%=ORSView.STUDENT_LIST_CTL%>><b>Student List</b></a>
	<b>|</b>
	<a href="MarksheetCtl"><b>Add Marksheet</b></a>
	<b>|</b>
	<a href=<%=ORSView.MARKSHEET_LIST_CTL%>><b>Marksheet List</b></a>
	<b>|</b>
	<a href="CourseCtl"><b>Add Course</b></a>
	<b>|</b>
	<a href=<%=ORSView.COURSE_LIST_CTL%>><b>Course List</b></a>
	<b>|</b>
	<a href="SubjectCtl"><b>Add Subject</b></a>
	<b>|</b>
	<a href=<%=ORSView.SUBJECT_LIST_CTL%>><b>Subject List</b></a>
	<b>|</b>
	<a href="FacultyCtl"><b>Add Faculty</b></a>
	<b>|</b>
	<a href=<%=ORSView.FACULTY_LIST_CTL%>><b>Faculty List</b></a>
	<b>|</b>
	<a href="#"><b>Add Timetable</b></a>
	<b>|</b>
	<a href=<%=ORSView.TIMETABLE_LIST_CTL%>><b>Timetable List</b></a>
	<b>|</b>
	<a href="LoginCtl?operation=<%=LoginCtl.OP_LOG_OUT%>"><b>Logout</b></a>
	<%
		} else {
	%>
	<h3>Hi, Guest</h3>
	<a href="WelcomeCtl"><b>Welcome</b></a> |
	<a href="LoginCtl"><b>Login</b></a>
	<%
		}
	%>
	<hr>
</body>
</html>