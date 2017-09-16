<?php
    require_once('functions/admin-functions.php');
    getAdminHeader();
    getAdminSidebar();
    getBreadcrum();
?>
<style>
  .edit-photo{
      padding: 4px;
      border-radius: 3px;
      border: 1px solid $ddd;
      cursor: pointer;
  }
  .edit-photo:hover{
      transform: scale(5);
    }
</style>
<div class="col-md-12">
    <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <div class="col-md-9 heading_title">
                Edit User Information
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
              <input type="text" class="form-control" name="name" value="">
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">Phone</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name="cell" value="">
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">Email</label>
            <div class="col-sm-8">
              <input type="email" class="form-control" name="email" value="">
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">Username</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name="username" value="" disabled="disabled">
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">User Role</label>
            <div class="col-sm-4">
              <select class="form-control select_cus" name="role">
              
                  <option value="" selected> </option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">User Photo</label>
            <div class="col-sm-8">
              <input type="file" name="">
              <img src="" alt="" width="40" class="pull-right edit-photo"> 
            </div>
          </div>
      </div>
      <div class="panel-footer text-center">
        <button type="submit" name="update" class="btn btn-sm btn-primary">UPDATE</button>
      </div>
    </div>
    </form>
</div><!--col-md-12 end-->
<?php
   getAdminFooter();
?>