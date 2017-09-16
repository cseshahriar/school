<?php
    require_once('functions/admin-functions.php');
    getAdminHeader();
    getAdminSidebar();
    getBreadcrum();
?>
<div class="col-md-12">
    <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <div class="col-md-9 heading_title">
                User Registration 
             </div>
             <div class="col-md-3 text-right">
                <a href="all-user.php" class="btn btn-sm btn btn-primary"><i class="fa fa-th"></i> All User</a>
            </div>
            <div class="clearfix"></div>
        </div>
      <div class="panel-body">
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">Name</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name="name">
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">Phone</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name="cell">
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">Email</label>
            <div class="col-sm-8">
              <input type="email" class="form-control" name="email">
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">Username</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name="username">
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">Password</label>
            <div class="col-sm-8">
              <input type="password" class="form-control" name="pass">
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">Re-Password</label>
            <div class="col-sm-8">
              <input type="password" class="form-control" name="repass"> 
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">User Role</label>
            <div class="col-sm-4">
              <select class="form-control select_cus" name="role">
                  <option value="" selected>Select User Role</option>
                  <option value="" selected>Select User Role</option>
              </select> 
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">User Photo</label>
            <div class="col-sm-8">
              <input type="file" name="img">
            </div>
          </div>
      </div>
      <div class="panel-footer text-center">
        <button type="submit" name="insert" class="btn btn-sm btn-primary">REGISTRATION</button>
      </div>
    </div>
    </form>
</div><!--col-md-12 end-->
<?php
	 getAdminFooter();
?>