<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<url:url    var="url"  value="/processuser"></url:url>
<form:form action="${url}" modelAttribute="user">


<label for="uname">User name</label>
<form:input path="uname" placeholder="Enter Username"/>


<label for="age">User name</label>
<form:input path="age" placeholder="Enter age"/>



<label for="password">Password</label>
<form:input path="password" placeholder="Enter Password"/>

<input type="submit">
</form:form>



</body>
</html>