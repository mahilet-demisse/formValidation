<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<body>
	<form:form modelAttribute="user" method="post">

		<a href="?locale=en">Click to set English Language</a>
		<br />
		<a href="?locale=nl">Click to set Dutch Language</a>
		<br />
		<br />
	<%-- 	<form:errors path="*" element="div" />
 --%>
		<spring:message code="name.label" />
		<form:input path="name" />
 	<form:errors path="name" cssStyle="color: red"/>
		<br />
		<br />
		<spring:message code="address.label" />
		<form:input path="address" />
			<form:errors path="address" cssStyle="color: red"/>
		<br />
		<br />
		<spring:message code="birthday.label" />
		<form:input path="birthday" />
			<form:errors path="birthday" cssStyle="color: red"/>
		<br />
		<br />
		<spring:message code="password.label" />
		<form:input type="password"  path="password" />
			<form:errors path="password" cssStyle="color: red"/>
		<br />
		<br />
		<spring:message code="sex.label" />
		<form:radiobutton path="sex" value="New" />Male
<form:radiobutton path="sex" value="Old" />Female 
	<form:errors path="sex" cssStyle="color: red"/>

<input type="submit" value="Submit" />

	</form:form>
</body>
</html>
