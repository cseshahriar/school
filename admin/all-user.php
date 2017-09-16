<?php
	require_once('functions/admin-functions.php');
	getAdminHeader();
  getAdminSidebar();
  getBreadcrum();
?>
<div class="col-md-12">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <div class="col-md-9 heading_title">
                     All User Information
             </div>
             <div class="col-md-3 text-right">
                <a href="add-user.php" class="btn btn-sm btn btn-primary"><i class="fa fa-plus-circle"></i> Add User</a>
            </div>
            <div class="clearfix"></div>
        </div>
      <div class="panel-body">
            <!-- search -->
            <div class="col-md-6 col-md-offset-3 search-box">
                 <form action="search-result.php" method="post">
                    <div class="form-group">
                        <input type="search" name="search" class="form-control" id="search" placeholder="Search user by username or name or email or phone" />
                        <input type="submit" name="submit" class="btn btn-primary pull-right" value="Search">
                    </div>
                </form>
            </div>
            <!-- /search -->
      
          <table class="table table-responsive table-striped table-hover table_cus">
              <thead class="table_head">
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th class="hidden-xs">Username</th>
                    <th class="hidden-xs">User-Role</th>
                    <th>Manage</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                    <td>shahriar</td>
                    <td>shahriar@gmail.com</td>
                    <td>01710835653</td>
                    <td class="hidden-xs">shahriarcse</td>
                    <td class="hidden-xs">superadmin</td>
                    <td>
                        <a href="view-user.php"><i class="fa fa-eye fa-lg"></i></a>
                        <a href="edit-user.php"><i class="fa fa-pencil-square fa-lg"></i></a>
                        <a href="delete-user.php" onclick="return confirmation()"><i class="fa fa-trash fa-lg"></i></a>
                    </td>
                </tr>
              </tbody>
          </table>
      </div>
      <div class="panel-footer">
        <div class="col-md-4">
            <a href="#" class="btn btn-sm btn-warning">EXCEL</a>
            <a href="#" class="btn btn-sm btn-primary">PDF</a>
            <a href="#" class="btn btn-sm btn-danger">SVG</a>
            <a href="#" class="btn btn-sm btn-success">PRINT</a>
        </div>
        <div class="col-md-4">
        </div>
        <div class="col-md-4 text-right">
            <nav aria-label="Page navigation">
              <ul class="pagination pagina_cus">
                <li>
                  <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                  </a>
                </li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                  <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                  </a>
                </li>
              </ul>
            </nav>
        </div>
        <div class="clearfix"></div>

      </div>
    </div>
</div><!--col-md-12 end-->

<script>
    function confirmation() {
      return confirm('Are you sure you want to do this?');
    }
</script>
<?php
	 getAdminFooter();
?>          