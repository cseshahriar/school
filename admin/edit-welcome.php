<?php
    require_once('functions/admin-functions.php');
    needLogIn();
    getAdminHeader();
    getAdminSidebar();
    getBreadcrum();
    //set value
    $id = $_REQUEST['post_id'];
    if(!empty($_POST)){
      $title = $_POST['title'];
      $subtitle = $_POST['subtitle'];
      $details = $_POST['details'];

      if(!empty($title && $details)){
          $select = "UPDATE posts SET post_title='$title', post_subtitle='$subtitle', post_details='$details' WHERE post_id='$id' ";
          $query = mysqli_query($dbconnect, $select);
          if($query){
            $msg = '<span id="message">Update Successfully</span>';
          }else{
            $msg = '<span id="message">Update Faild!</span>';
          }
      }else{
        $msg = '<span id="message">Title , Details msut not bee empty! </span>';
      }
    }

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
    <form class="form-horizontal" action="" method="post">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <div class="col-md-9 heading_title">
                Edit Welcome Massage
                <?php if(isset($msg)){echo $msg; } ?>
             </div>
             <div class="col-md-3 text-right">
                <a href="all-user.php" class="btn btn-sm btn btn-primary" disabled><i class="fa fa-th"></i> All Welcome Massage </a>
            </div>
            <div class="clearfix"></div>
        </div>
      <div class="panel-body">
          <?php 
            //for value set
            $query = "SELECT * FROM posts WHERE post_cat_id='$id' ";
            $sqlQuery = mysqli_query($dbconnect, $query);
            $row = mysqli_fetch_array($sqlQuery);
           ?>
          <div class="form-group">
            <label for="title" class="col-sm-3 control-label">Title</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name="title" id="title" value="<?= $row['post_title']; ?>">
            </div>
          </div>
          <div class="form-group">
            <label for="title" class="col-sm-3 control-label">Subtitle</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name="subtitle" id="title" value="<?= $row['post_subtitle']; ?>">
            </div>
          </div>
          <div class="form-group">
            <label for="desc" class="col-sm-3 control-label">Details</label>
            <div class="col-sm-8">
              <textarea class="form-control" name="details" id="desc" rows="8"><?= $row['post_details']; ?></textarea>
            </div>
          </div>
          <div class="form-group">
            <label for="btn_text" class="col-sm-3 control-label">Button Text</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name="btnText" id="btn_text" value="<?= $row['post_btn_txt']; ?>">
            </div>
          </div>
          <div class="form-group">
            <label for="btn_url" class="col-sm-3 control-label">Button URL</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name="btnUrl" id="btn_url" value="<?= $row['post_btn_url']; ?>">
            </div>
          </div>
          <div class="form-group">
            <label for="btn_url" class="col-sm-3 control-label">Date</label>
            <div class="col-sm-8">
              <input type="datetime" class="form-control" name="post_date" id="btn_url" value="<?= $row['post_date']; ?>">
            </div>
          </div>
      </div>
      <div class="panel-footer text-center">
        <button type="submit" class="btn btn-sm btn-primary">Update Welcome Massage</button>
      </div>
    </div>
    </form>
</div><!--col-md-12 end-->
<?php
   getAdminFooter();
?>
