<%@include file="header.jsp" %>

<%@page import="model.Dao.STUDao" %>
<%@page import="model.StudentDipti" %>

<%
String id=request.getParameter("id");
StudentDipti s=STUDao.getById(Integer.parseInt(id));

%>

<div class="container">
<div class="jumbotron text-center">
  <h1 class="display-4">Student About </h1>
 
  <hr class="my-4">
  <a class="btn btn-primary btn-lg" href="viewstudentdipti.jsp" role="button">All Students</a>
</div>

    <form action="addstudentdipti.jsp" method="post">
        
        <input type="hidden" name="id" value="<%=s.getId()%>" class="form-control">
    
    <label class="form-label">Name</label>
    <input type="text" name="name" value="<%=s.getName()%>" class="form-control"><br>
    <label class="form-label">Email</label>
    <input type="email" name="email" value="<%=s.getEmail()%>" class="form-control"> <br>
    <label class="form-label">Cell</label>
    <input type="text" name="cell" value="<%=s.getCell()%>" class="form-control"><br>
    <label class="form-label">Gender</label>
    <input type="radio" name="gender" value="male">male
    <input type="radio" name="gender" value="female">female
    <input type="radio" name="gender" value="other">other<br>
    <label>Subject</label>
    <select name="subject"> 
        <option>Select on</option>
        <option value="HTML">HTML</option>
        <option value="JAVA">JAVA</option>
        <option value="JAVA">C</option>
        <option value="Python">Python</option>
    </select><br>
    <input type="submit" value="submit" class="btn btn-primary">
    
</form>
</div>
<%@include file="footer.jsp" %>
