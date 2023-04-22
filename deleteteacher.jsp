<%@page import="model.Dao.TEADao" %>
<jsp:useBean id="s" class="model.TeacherDipti"></jsp:useBean>
<jsp:setProperty name="s" property="*"></jsp:setProperty>
<%
    int i =TEADao.Delete(s);
    
if(i>0){
    response.sendRedirect("suessesfully.jsp");
}
else{
    response.sendRedirect("error.jsp");
}

%>