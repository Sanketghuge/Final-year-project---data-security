<%@include file="oback.jsp"%>

<div class="container"><br>
  <div class="row">
 
<div class="col-md-4 col-md-offset-4">
 <div class="login">
<div class="H3 text-center">UPLOAD FILE</DIV><br>
<form name="ds" ENCTYPE="multipart/form-data" action="upload1.jsp" method="post" onSubmit=""> 

<div class="form-group has-feedback">
<label class="label-control">Select File</label>
<input type="file" name="myfile" placeholder="Enter Username" title="Enter Username" class="form-control">
<span class="form-control-feedback"></span>
</div><br>
<input type="submit" value="UPLOAD" class="btn btn-primary btn-block btn-responsive">
</form>
</div>
</div>
</div></div>