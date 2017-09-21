<?php  
  require_once('function/functions.php'); 
  getHeader(); 
  //for message insert
  if(!empty($_POST)){
    $name = testUserInput($_POST['name']);
    $email = testUserInput($_POST['email']);
    $subject =testUserInput($_POST['subject']);
    $massage = testUserInput($_POST['massage']);
    if(!empty($name AND $email AND $subject AND $massage)){
      $select = "INSERT INTO comments(comment_name, comment_email, comment_subject, message)
      VALUES('$name', ' $email', '$subject', '$massage')";
      $query = mysqli_query($dbconnect, $select);
      if($query){
        $msg = '<span id="massages" class="text-danger">Your massage has been sent successfully!</span>';
      }else{
         $msg = '<span id="massages" class="text-danger">Massage sent faild!</span>';
      }
    }
  }else{
    $msg = '<span id="massages" class="text-danger">All input field must not be empty!</span>';
  }
  //data filtering function
    function testUserInput($data){
      $data = trim($data);
      $data = htmlentities($data);
      $data = htmlspecialchars($data);
      return $data;
    }
?>
<?php 
  $select = "SELECT * FROM banner WHERE banner_cat_id='5' ";
  $query = mysqli_query($dbconnect, $select);
  $row = mysqli_fetch_array($query);
 ?>
<section class="academic-banner" style="background-image: url(admin/uploads/<?= $row['banner_image']; ?>);">
  <div class="about-opacity">
     <div class="container">
         <h2><?= $row['banner_title']; ?></h2>
         <p><?= $row['banner_subtitle']; ?></p>
     </div> 
  </div>
</section>
<!-- / banner -->
<?php
  getBreadcrumb();
?>
<!--about us page-->        
<section>
  <div class="container">
      <div class="col-sm-3">
          <div class="widget-education">
              <ul>
                  <li><a href="#">about us</a></li>
                  <li><a href="#">Ascent Group</a></li>
                  <li><a href="#">History</a></li>
                  <li><a href="#">Aims and Vision</a></li>
                  <li><a href="#">Our Campuses</a></li>
                  <li><a href="#">Educational Philosophy</a></li>
                  <li><a href="#">Employment</a></li>
                  <li><a href="#">Scholastica Alumni Association</a></li>
                  <li><a href="#">News and Updates</a></li>
              </ul>
          </div>
      </div>
      <!-- contact page content -->
      <div class="col-sm-9">
        <article>
          <h1>Contact Us</h1> 
          <p>For any questions or comments please write to us directly:  </p>
          <?php if(isset($msg)){echo $msg;} ?><br><br>
        </article>
          <div class="contact-us">
             <form action="" method="post">
                <div class="col-sm-6 pl0">
                  <div class="form-group">
                      <input type="text" name="name" placeholder="Full Name">                    
                  </div><!--form group-->
                  <div class="form-group">
                      <input type="email" name="email" placeholder="Email">                       
                  </div><!--form group-->
                  <div class="form-group">
                      <input type="text" name="subject" placeholder="Subject">           
                  </div><!--form group-->
                </div>
                <div class="col-sm-6 pr0">
                     <textarea name="massage"  rows="7" placeholder="Type Message"></textarea>
                    <input type="submit" value="Sent Message">  
                </div>
             </form>
          </div>
      </div>
      <!-- / contact page content -->
  </div>
</section>
<!-- jquery msg hide -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function(){
      $("#massages").show();
      setTimeout(function() {
       $("#massages").hide(); 
      }, 5000);
    });
  </script>
<?php  
  getPhotoSlider();
  getFooter();
?>