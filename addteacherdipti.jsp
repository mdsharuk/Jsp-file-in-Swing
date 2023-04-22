<%@page import="model.Dao.TEADao" %>
<jsp:useBean id="s" class="model.TeacherDipti"></jsp:useBean>
<jsp:setProperty name="s" property="*"></jsp:setProperty>
<%
    int i =TEADao.save(s);
    
if(i>0){
    response.sendRedirect("viewteacher.jsp");
}
else{
    response.sendRedirect("error.jsp");
}

%>