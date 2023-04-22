<%@page import="model.Dao.STUDao" %>
<jsp:useBean id="s" class="model.StudentDipti"></jsp:useBean>
<jsp:setProperty name="s" property="*"></jsp:setProperty>
<%
    int i =STUDao.Delete(s);
    
if(i>0){
    response.sendRedirect("suessesfully.jsp");
}
else{
    response.sendRedirect("error.jsp");
}

%>