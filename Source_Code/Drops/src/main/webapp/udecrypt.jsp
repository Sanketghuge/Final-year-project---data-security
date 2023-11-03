<%@include file="uback.jsp"%><br><br>
<div class="container">
  <div class="row">
<div class="col-md-4 col-md-offset-4">
<div class="H3 text-center">Download Fie</DIV><br>
<form action="udecrypt1.jsp" name="ds" method="post" onsubmit="">
<input type=hidden  >
<div class="form-group has-feedback">
<label class="label-control">File ID</label>
<input type="text" name="fileId"  readonly value="<%=request.getParameter("fileId")%>" class="form-control">
<span class="form-control-feedback"></span>
</div>
<div class="form-group has-feedback">
<label class="label-control">File Name</label>
<input type="text"  readonly value="<%=request.getParameter("fname") %>" class="form-control">
<span class="form-control-feedback"></span>
</div>
<div class="form-group has-feedback">
<label class="label-control">Enter Composite Key</label>

<input type="text" name="key3" placeholder="Enter Composite Key" title="Enter Composite Key" class="form-control">
<span class="form-control-feedback"></span>
</div>

<input type="submit" value="DOWNLOAD FILE" class="btn btn-primary btn-block btn-responsive">
</form>
