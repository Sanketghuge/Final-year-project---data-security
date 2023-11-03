<%@include file="oback.jsp"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*,databaseconnection.*,action.*"%>

<%
int ownerId=(Integer)session.getAttribute("ownerId");
     
    Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from owner where ownerId='"+ownerId+"'");
    if(rs.next())
    { %>
    <div class="container">
    <div class="row">
<div class="col-md-6 col-md-offset-3">
<div class="H3 text-center text-uppercase" ><%=rs.getString("uname")%>'s profile</div>
    	<form action="oprofile1.jsp" name="ds" onsubmit="">
<div class="form-group has-feedback">
<label class="label-control">Enter Name</label>
<input type="text" name="name" placeholder="Enter Name" value="<%=rs.getString("name")%>" title="Enter Name" class="form-control">
<span class="form-control-feedback"></span>
</div>
<div class="form-group has-feedback">
<label class="label-control">Enter Username</label>

<input type="text" name="uname" readonly placeholder="Enter Username" value="<%=rs.getString("uname")%>" title="Enter Username" class="form-control">
<span class="form-control-feedback"></span>
</div>
<div class="form-group has-feedback">
<label class="label-control">Enter Password</label>
<input type="text" name="pass" placeholder="Enter Password" value="<%=rs.getString("pass")%>" title="Enter Password" class="form-control">
<span class="form-control-feedback"></span>
</div>
<div class="form-group has-feedback">
<label class="label-control">Enter Email</label>
<input type="email" name="email" placeholder="Enter Email" title="Enter Email" value="<%=rs.getString("email")%>" class="form-control">
<span class="form-control-feedback"></span>
</div>


<div class="form-group has-feedback">
<label class="label-control">Enter Phone</label>
<input type="number" name="phone" placeholder="Enter Phone Number" title="Enter Phone Number" value="<%=rs.getString("phone")%>" class="form-control">
<span class="form-control-feedback"></span>
</div>

<input type="submit" value="UPDATE" class="btn btn-primary btn-block btn-responsive">
</form>
    	
    <% }
%>