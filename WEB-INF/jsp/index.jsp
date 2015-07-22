<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<c:if test="${vap eq false}">
    <sec:authorize access="hasRole('ADMIN')">
        <% response.sendRedirect("management"); %>
    </sec:authorize>
</c:if>

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
            <div class="jumbotron">
                <h1>Once the nav becomes affix it no longer follows the normal navbar CSS styles. You could give an id to the outer DIV container, and then set this as the `affix' element. Use CSS to make sure it stays 100% width.</h1>      
                <p>This page will grow as we add more and more components from Bootstrap...</p>      
                <a href="#" class="btn btn-info btn-lg"><span class="glyphicon glyphicon-search"></span> Search</a>
            </div>
            <c:forEach var="user" items="${users}">
                <p>${user.userName}</p><br />
            </c:forEach>
                
            vap: ${vap}
        </div>
        <%@ include file="/WEB-INF/jsp/includes/footer.jsp" %> 
    </div>
    <%@ include file="/WEB-INF/jsp/includes/external-js.jsp" %>
    
    </body>

</html>

