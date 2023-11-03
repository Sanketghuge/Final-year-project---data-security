<%@include file="hback.jsp"%>
<div class="container">
<div class="row">
<div class="col-md-6 col-md-offset-3">
<div class="H3 text-center">REGISTRATION FORM</div>
<form action="reg1.jsp" name="ds" onsubmit="">

<div class="form-group has-feedback">
<label class="label-control">Enter Name</label>
<input type="text" name="name" placeholder="Enter Name" title="Enter Name" class="form-control">
<span class="form-control-feedback"></span>
</div>
<div class="form-group has-feedback">
<label class="label-control">Enter Username</label>

<input type="text" name="uname" placeholder="Enter Username" title="Enter Username" class="form-control">
<span class="form-control-feedback"></span>
</div>
<div class="form-group has-feedback">
<label class="label-control">Enter Password</label>
<input type="password" name="pass" placeholder="Enter Password" title="Enter Password" class="form-control">
<span class="form-control-feedback"></span>
</div>
<div class="form-group has-feedback">
<label class="label-control">Enter Email</label>
<input type="email" name="email" placeholder="Enter Email" title="Enter Email" class="form-control">
<span class="form-control-feedback"></span>
</div>

<div class="form-group has-feedback">
<label class="label-control">User Type</label>
<select name="utype" class="form-control">
<option value="">Select User Type</option>
<option value="owner">OWNER</option>
<option value="user">USER</option>
</select>
<span class="form-control-feedback"></span>
</div>
<div class="form-group has-feedback">
<label class="label-control">Enter Phone</label>
<input type="number" name="phone" placeholder="Enter Phone Number" title="Enter Phone Number" class="form-control">
<span class="form-control-feedback"></span>
</div>

<input type="submit" value="REGISTER" class="btn btn-primary btn-block btn-responsive">
</form>