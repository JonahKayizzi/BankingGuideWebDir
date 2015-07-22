<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Banking and financial guide</title>
        <%@ include file="/WEB-INF/jsp/includes/external-css.jsp" %>
    </head>

    <body>    
        <div id="container">
            <%@ include file="/WEB-INF/jsp/includes/header.jsp" %>
            <div id="nav" data-spy="affix" data-offset-top="59">
            <nav id="web-nav" class="navbar navbar-inverse">
                <div class="container ">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                        </button>
                      </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li><a href="<c:url value="/" />"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                            <li><a href="<c:url value="/news" />">News</a></li>
                            <li><a href="<c:url value="/loans" />">Loans</a></li>
                            <li><a href="<c:url value="/insurance" />">Insurance</a></li>
                            <li><a href="<c:url value="/mortgages" />">Mortgages</a></li>
                            <li><a href="<c:url value="/securities" />">Securities</a></li>
                            <li><a href="<c:url value="/forexrates" />">Forex Rates</a></li>
                            <li><a href="<c:url value="/moneytransfer" />">Money Transfer</a></li>
                            <li><a href="<c:url value="/mobilemoney" />">Mobile Money</a></li>
                        </ul>
                    </div>
                </div>
            </nav>        
            </div>
	<div id="page" class="container">
            <div id="edit_user" class="col-sm-9">
                <fieldset>
                <legend>Edit User</legend>
                        <form:form class="form-horizontal" role="form" method="POST" modelAttribute="command">
                                <c:set var="formErrors"><form:errors path="*"/></c:set>
                                <c:if test="${not empty formErrors}">					
                                        <div class="text-danger err" >
                                                Please fix the errors in the form.
                                        </div>				
                                </c:if>
                                <div class="form-group mtop10">				
                                        <label class="control-label col-sm-3" for="userName">Username</label>
                                        <div class="col-sm-5">
                                        <form:input path="userName" class="form-control" /></div>								
                                        <form:errors class="col-sm-4" path="userName" cssClass="text-danger" />						
                                </div>
                                <div class="form-group">
                                        <label class="control-label col-sm-3" for="email">Email</label>
                                        <div class="col-sm-5">
                                        <form:input path="userEmail" class="form-control" id="email"/></div>
                                        <form:errors class="col-sm-4" path="userEmail" cssClass="text-danger" />							
                                </div>
                                <div class="form-group">
                                        <label class="control-label col-sm-3" for="userType">User Type</label>
                                        <div class="col-sm-5"><form:input path="userType" class="form-control"/></div>
                                        <form:errors class="col-sm-4" path="userType" cssClass="text-danger" />
                                </div>
                                <div class="form-group">
                                        <label class="control-label col-sm-3" for="password">Password</label>
                                        <div class="col-sm-5"><form:password path="userPassword" class="form-control"/></div>
                                        <form:errors class="col-sm-4" path="userPassword" cssClass="text-danger" />
                                </div>
                                
                                
<!--                                        <input type="hidden"                        
                                name="${_csrf.parameterName}"
                                value="${_csrf.token}"/>-->
                                </div>
                                <div class="col-sm-offset-3 col-sm-7">
                                        <button type="submit" class="btn btn-primary">Edit</button>
                                </div>					
                        </form:form>				
                </fieldset>
            </div>	
        </div>
        <%@ include file="/WEB-INF/jsp/includes/footer.jsp" %> 
    </div>
    <%@ include file="/WEB-INF/jsp/includes/external-js.jsp" %>
    
    </body>

</html>

