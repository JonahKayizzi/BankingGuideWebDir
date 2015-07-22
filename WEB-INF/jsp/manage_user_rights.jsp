<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> User Access</title>
</head>

<body>
    
    <div>
        <a href="">
        Add New Access Rights form (Link to form for adding new access rights)
        </a>
    </div>
    
    <div>
        <form id="forexbureau" action="" method="POST">
                       <label>User Type</label>
                       <select>
                           <option value="admin">Admin</option>
                           <option value="manager">Manager</option>
                           <option value="bank">Bank</option>
                           <option value="editor">Article Editor</option>
                           <option value="insurance">Insurance Company</option>
                           <option value="microfinance">Micro Finance</option>
                           <option value="sacco">SACCO</option>
                           <option value="moneytransfer">Money Transfer Agent</option>
                       </select>

        </form>
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
        
     
        <c:forEach var="useraccess" items="${accessrights}">
        <form action="update_access" method="POST">
        <tr>
            
            
            
            <td>
                <div>
                    <input type="text" name="usertype" value="${useraccess.usrAcsRtsUserType}"></input>
                </div>
            </td>
            
            <td>
                <div>
                    <input type="text" name="userfunction" value="${useraccess.usrAcsRtsFunction}"></input>
                </div>
            </td>
            <td>
                <div>
                                     
                      <c:choose>
                        <c:when test="${useraccess.usrAcsRtsStatus == 'true'}">
                          <input type="checkbox" value="true" name="right" checked></input> 
                        </c:when>
                        <c:otherwise>
                            <input type="checkbox" value="true" name="right"></input>
                        </c:otherwise>
                    </c:choose>
             
                </div>
                
            </td>
           <td>
                ${useraccess.usrAcsRtsTime};
            </td>
            <td>
                <div>
                    <input type="submit" value="Update"></input>
                </div>
            </td>
            
        </tr>
        </form>
    </c:forEach>
    
    </table>
</body>
</html>