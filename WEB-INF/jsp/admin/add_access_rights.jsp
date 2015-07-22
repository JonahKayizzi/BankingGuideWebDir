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
            <div id="row">            
                <%@ include file="/WEB-INF/jsp/includes/adminbar.jsp" %>
                <div class="col-sm-9">
                    <form:form class="form-horizontal" role="form" method="post" modelAttribute="accessrights">
                        <div class="form-group" id="nameLine">
                            <label class="control-label col-sm-2">User Type</label>
                                       <div class="col-sm-5"><form:select path="usrAcsRtsUserType" class="form-control">
                                           <option value="admin">Admin</option>
                                           <option value="manager">Manager</option>
                                           <option value="bank">Bank</option>
                                           <option value="editor">Article Editor</option>
                                           <option value="insurance">Insurance Company</option>
                                           <option value="microfinance">Micro Finance</option>
                                           <option value="sacco">SACCO</option>
                                           <option value="moneytransfer">Money Transfer Agent</option>
                                       </form:select></div>
                        </div>
                        <div class="form-group">    
                            <label class="control-label col-sm-2" for="userFunction">User Function</label>
                            <div class="col-sm-5"><form:input class="form-control" path="usrAcsRtsFunction" type="text" /></div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="accessright">Access Right</label>
                            <div class="col-sm-5"><input type="checkbox" value="true" /></div>
                        </div>
                            <input type="hidden"                        
                                name="${_csrf.parameterName}"
                                value="${_csrf.token}"/>
                        <div class="col-sm-offset-3">
                            <input class="btn btn-primary" name="addright" type="submit" id="addright" value="Add" />
                            <input class="btn btn-default" name="cancel" type="submit" id="addright" value="Cancel" />
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
        <%@ include file="/WEB-INF/jsp/includes/footer.jsp" %> 
    </div>
    <%@ include file="/WEB-INF/jsp/includes/external-js.jsp" %>
    
    </body>

</html>

