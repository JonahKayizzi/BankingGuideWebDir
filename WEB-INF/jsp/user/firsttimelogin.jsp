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
                            <li class="active"><a href="<c:url value="/" />"><span class="glyphicon glyphicon-home"></span> Home</a></li>
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
            
            <div id="login" class="col-sm-8">
                <fieldset >
                    <legend>Change password</legend>
                    <form:form class="form-horizontal" role="form" method="post" modelAttribute="firsttime">
                        <div class="form-group mtop10">
                            <label class="control-label col-sm-3" for="password">New password</label>
                            <div class="col-sm-5">
                                <form:input class="form-control" type="password" path="password"/>
                            </div>
                            <form:errors class="col-sm-4" path="password" cssClass="text-danger" />
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="confirmPassword">Confirm Password</label>
                            <div class="col-sm-5">
                                <form:input class="form-control" type="password" path="confirmPassword"/>
                            </div>
                            <form:errors class="col-sm-4" path="confirmPassword" cssClass="text-danger" />
                        </div>					    
                        <div class="col-sm-offset-4 col-sm-6"><input type="hidden"                        
                                                                     name="${_csrf.parameterName}"
                                                                     value="${_csrf.token}"/>
                            <button type="submit" class="btn btn-primary">Save</button>
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

