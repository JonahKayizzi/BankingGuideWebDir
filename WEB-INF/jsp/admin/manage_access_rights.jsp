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
                    <div>
                        <a href="<c:url value="/addrights"/>">
                            Add New Access Rights form (Link to form for adding new access rights)
                        </a>
                    </div>

                    <div>
                        <form:form id="accessrights" modelAttribute="command" method="POST">
                                       <label>User Type</label>
                                       <form:select path="name">
                                           <option value="admin">Admin</option>
                                           <option value="manager">Manager</option>
                                           <option value="bank">Bank</option>
                                           <option value="editor">Article Editor</option>
                                           <option value="insurance">Insurance Company</option>
                                           <option value="microfinance">Micro Finance</option>
                                           <option value="sacco">SACCO</option>
                                           <option value="moneytransfer">Money Transfer Agent</option>
                                       </form:select>
                                        <input type="hidden"                        
                                        name="${_csrf.parameterName}"
                                        value="${_csrf.token}"/>
                                       <input type="submit" value="Select">

                        </form:form>
                    </div>

                    <table border="1">

                        <tr>
                            <th>
                                User Type
                            </th>
                            <th>
                                System Function
                            </th>
                            <th>
                                Access Right
                            </th>
                            <th>
                                Update Time
                            </th>
                            <th>
                                Action
                            </th>
                        </tr>
                        
                        <c:forEach var="useraccess" items="${useraccessrights}">
                        <form action="update_access" method="POST">
                        <tr>
                            <td>
                                <div>
                                    <%--${useraccess.usrAcsRtsUserType}"> --%>
                                    ${useraccess[1]}
                                </div>
                            </td>

                            <td>
                                <div>
                                    <%--${useraccess.usrAcsRtsFunction}" --%>
                                    ${useraccess[2]}
                                </div>
                            </td>
                            <td>
                                <div>

                                      <c:choose>
                                        <%--<c:when test="${useraccess.usrAcsRtsStatus == 'true'}">--%>
                                          <c:when test="${useraccess[3] == 'true'}">
                                          <input type="checkbox"  disabled="true" value="true" name="right" checked></input> 
                                        </c:when>
                                        <c:otherwise>
                                            <input type="checkbox" disabled="true" value="true" name="right"></input>
                                        </c:otherwise>
                                    </c:choose>

                                </div>

                            </td>
                           <td>
                                <%--${useraccess.usrAcsRtsTime};--%>
                                ${useraccess[4]}
                            </td>
                            <td>
                                <div>
                                    <input type="submit" disabled="true" value="Update"></input>
                                </div>
                            </td>

                        </tr>
                        </form>
                    </c:forEach>

                    </table>
                </div>
            </div>
        </div>
        <%@ include file="/WEB-INF/jsp/includes/footer.jsp" %> 
    </div>
    <%@ include file="/WEB-INF/jsp/includes/external-js.jsp" %>
    
    </body>
</html> 
