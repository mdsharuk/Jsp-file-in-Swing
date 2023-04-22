<%@page import="model.Dao.STUDao" %>
<jsp:useBean id="s"  class="model.StudentDipti"></jsp:useBean>
<jsp:setProperty name="s" property="*"></jsp:setProperty>
<%
    int i =STUDao.save(s);
    
if(i>0){
    response.sendRedirect("viewstudentdipti.jsp");
}
else{
    response.sendRedirect("error.jsp");
}

%>