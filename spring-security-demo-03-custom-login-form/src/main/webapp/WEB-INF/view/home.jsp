<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
<title>
Welcome
</title>
</head>
<body>
<h2>Home Page</h2>

<p>
WELCOME User
</p>

<hr>
<!-- display user name and role -->
<p>
  User : <security:authentication property="principal.username"/>
 <br><br>
  Roles: <security:authentication property="principal.authorities"/>
</p>
<hr>

<security:authorize access="hasRole('MANAGER')">

<!-- Add a link to point / leaders .. this is for managers -->
<p>
<a href="${pageContext.request.contextPath}/leaders ">LeaderShip Meeting</a>
(Only for Managers)
</p>
 </security:authorize>
 
 
<security:authorize access="hasRole('ADMIN')">
 <!-- add link for /systems ... only admins can access -->
<a href="${pageContext.request.contextPath}/systems">IT Systems Meetings</a>
(Only for Admin)
</security:authorize> 

<form:form action="${pageContext.request.contextPath}/logout"
		    method="POST">
  
  <input type="submit" value="Logout"/>
</form:form>


</body>

</html>