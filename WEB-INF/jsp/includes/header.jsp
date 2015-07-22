<%-- 
    Document   : header
    Created on : Apr 8, 2015, 2:07:53 PM
    Author     : Xcelsia
--%>
<div id="header">
    <div class="container">
        <div class="row">
	<div id="app" class="col-sm-5">
 		<h3><fmt:message key="app" /></h3>	 
	</div>
        
	<div id="search" class="col-sm-4 mtop10">
		<form class="form-horizontal" role="form" action="<c:url value="/search" />" >
			<div class="form-group ui-widget">
				<input class="form-control" type="text" placeholder="Search" />
				<button type="submit"><span class="glyphicon glyphicon-search"></span></button>
			</div>
		</form>
	</div>
	<div class="col-sm-3 mtop10">
            <div class="pull-right">
			<c:choose>
			<c:when test="${pageContext.request.remoteUser == null}">
				<a href="<c:url value="/login" />">Login</a> |
				<a href="<c:url value="/register" />">Register</a>
			</c:when>
			<c:otherwise>
				   Welcome : <a href="<c:url value="/user" />" >${pageContext.request.remoteUser} </a>
			           | <a href="<c:url value="/logout" />" > Logout</a> 
			</c:otherwise>
			</c:choose>
            </div>                      
	</div>
        </div>
                                 
    </div>
</div>