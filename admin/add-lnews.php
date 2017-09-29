<?php
    require_once('functions/admin-functions.php');
    needLogIn();
    if($_SESSION['role'] <= 2) {
    getAdminHeader();
    getAdminSidebar();
    getBreadcrum();
    //insert logic
    if(!empty($_POST)){
      $title = input_filter($_POST['title']);
      $subtitle = input_filter($_POST['subtitle']);
      $details = input_filter($_POST['details']);
      $btn_txt = input_filter($_POST['btn_txt']);
      $btn_url = input_filter($_POST['btn_url']);
      $image = $_FILES['image'];
      $image_name = "latest-news-".time()."-".rand(1000, 1000000).".".pathinfo($image['name'],PATHINFO_EXTENSION);
      $date = $_POST['lnews_date'];
      //img name.path
      if(!empty($title && $details && $image)){
        $insert = "INSERT INTO news(news_title,news_subtitle,news_details,news_btn_text,news_btn_url,news_image,news_date,news_cat_id)VALUES(' $title','$subtitle','$details','$btn_txt','$btn_url','$image_name','$date','1')";

        $insertQuery = mysqli_query($dbconnect, $insert);
        if($insertQuery){
          move_uploaded_file($image['tmp_name'], 'uploads/'.$image_name);
          $msg = '<span id="message">Insertion Successfuly</span>';
          header('Location:latest-news.php'); //redirect 
        }else{
          $msg = '<span id="message">Insertion Failed!</span>';
        }
      }else{
        $msg = '<span id="message">Pleas enter your name, email, username, password and role id!</span>';
      }
    }
    //data filtering function
    function input_filter($data){
      $data = trim($data);
      $data = htmlentities($data, ENT_QUOTES);
      $data = htmlspecialchars($data);
      return $data;
    }
?>
<div class="col-md-12">
    <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <div class="col-md-9 heading_title">
                Add Slider
               <span id="massages" class="text-danger"> <?php if(isset($msg)){echo $msg;} ?></span>
             </div>
             <div class="col-md-3 text-right">
                <a href="all-user.php" class="btn btn-sm btn btn-primary"><i class="fa fa-th"></i> All User</a>
            </div>
            <div class="clearfix"></div>
        </div>
      <div class="panel-body">
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">Title</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name="title">
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">Subtitle</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name="subtitle">
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">Details</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name="details">
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">Button Text</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name="btn_txt">
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">Button Url</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name="btn_url">
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">Image</label>
            <div class="col-sm-8">
              <input type="file" name="image" />
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-sm-3 control-label">Date</label>
            <div class="col-sm-8">
              <input type="date" name="lnews_date" id="datepicker" />
            </div>
          </div>
      </div>
      <div class="panel-footer text-center">
        <button type="submit" name="lnews" class="btn btn btn-primary">Add Latest News</button>
      </div>
    </div>
    </form>
</div><!--col-md-12 end-->
<?php
	 getAdminFooter();
  }else{//if not role <=1
    echo "Access Denied!";
  }
?>