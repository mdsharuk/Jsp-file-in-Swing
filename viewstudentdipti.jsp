<%@page import="model.StudentDipti"%>
<%@include file="header.jsp" %>
<%@page import="model.Dao.STUDao" %>
<jsp:useBean id="s" class="model.StudentDipti"></jsp:useBean>
<jsp:setProperty name="s" property="*"></jsp:setProperty>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="j"%>
<%@page import="java.util.*" %>

<%
 ArrayList<StudentDipti>list=STUDao.sList();
 request.setAttribute("list", list);
    
%>

<div class="container">
    <table class="table table-striped">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>E-mail</th>
            <th>Cell</th>
            <th>Gender</th>
            <th>Subject</th>
            <th>Action</th>
        </tr>
        
        <tbody>
            <j:forEach items="${list}" var="s">
                   <tr>
              <td>${s.getId()}</td>
              <td>${s.getName()}</td>
              <td>${s.getEmail()}</td>
              <td>${s.getCell()}</td>
              <td>${s.getGender()}</td>
              <td>${s.getSubject()}</td>
              <td>
                  <a href="updatestu.jsp?id=${s.getId()}" class="btn btn-warning">Update</a>
                  <a href="delete.jsp?id=${s.getId()}" class="btn btn-danger">Delete</a>
              </td>
              </tr>
            </j:forEach>
        </tbody>
        
        
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
    
    
</div>

<%@include file="footer.jsp" %>