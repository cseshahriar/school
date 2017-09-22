<?php  
  require_once('function/functions.php'); 
  getHeader(); 
  //for message insert
  if(isset($_POST['sent'])){
    $name = testUserInput($_POST['name']);
    $email = testUserInput($_POST['email']);
    $subject =testUserInput($_POST['subject']);
    $massage = testUserInput($_POST['massage']);
    if(!empty($name && $email && $subject && $massage)){
      $select = "INSERT INTO comments(comment_name, comment_email, comment_subject, message)
      VALUES('$name', ' $email', '$subject', '$massage')";
      $query = mysqli_query($dbconnect, $select);
      if($query){
        $msg = '<span id="massages" class="text-danger">Your massage has been sent successfully!</span>';
      }else{
         $msg = '<span id="massages" class="text-danger">Massage sent faild!</span>';
      }
    }else{
      $msg = '<span id="massages" class="text-danger">All input field must not be empty!</span>';
    }
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
                    <input type="submit" name="sent" value="Sent Message">  
                </div>
             </form>
          </div>
      </div>
      <!-- / contact page content -->
  </div>
</section>
<!-- jquery msg hide -->
<script src="js/vendor/jquery-1.12.0.min.js"></script>
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
?>
<!-- footer   -->
<footer>
 <div class="container">
   <div class="col-sm-3">
      <?php 
        $select = "SELECT * FROM footer_info WHERE finfo_cat_id='1' ";
        $query = mysqli_query($dbconnect, $select);
        $row = mysqli_fetch_array($query);
      ?>
       <div class="footer-details">
           <h2><?= $row['finfo_title']; ?></h2>
           <ul>
               <li><?= $row['finfo_address_one']; ?></li>
               <li><?= $row['finfo_address_two']; ?></li>
               <li><?= $row['finfo_address_three']; ?></li>
               <li>
                   <?= $row['finfo_address_four']; ?>
               </li>
           </ul>
       </div>
   </div><!--col-sm-3 end-->
   <!-- campus address  -->
<!-- campus address  -->
    <?php 
        $select = "SELECT * FROM footer_info WHERE finfo_cat_id='2' LIMIT 0,2; ";
        $query = mysqli_query($dbconnect, $select);
        while($crow = mysqli_fetch_array($query)) :
      ?>
   <div class="col-sm-3">
       <div class="footer-details">
           <h2><?= $row['finfo_title']; ?></h2>
           <ul>
               <li><?= $row['finfo_address_one']; ?></li>
               <li><?= $row['finfo_address_two']; ?></li>
               <li><?= $row['finfo_address_three']; ?></li>
           </ul>
       </div>
   </div><!--col-sm-3 end-->
  <?php endwhile; ?>
<!-- /campus address  -->
   <div class="col-sm-3">
       <div class="footer-details">
      <?php 
        $select = "SELECT * FROM footer_info WHERE finfo_cat_id='3' ";
        $query = mysqli_query($dbconnect, $select);
        while($row = mysqli_fetch_array($query)):
      ?>
           <h2><?= $row['finfo_title']; ?></h2>
           <ul>
               <li style="padding-bottom: 0px;"><a href=""><img class="img-responsive" src="admin/uploads/<?= $row['finfo_image']; ?>" alt=""></a></li>
               <li style="padding-bottom: 0px;"><?= $row['finfo_address_one']; ?></li>
           </ul>
         <?php endwhile; ?>
       </div>
   </div><!--col-sm-3 end-->
 </div>  
 <div class="back_to_top"><img src="img/target.png" alt="target"></div>
</footer> 
<!-- /footer -->
<!-- Social Nav -->
<ul class="social-nav model-0">
  <?php 
    $select = "SELECT * FROM social";
    $query = mysqli_query($dbconnect, $select);
    while($row = mysqli_fetch_array($query)):
  ?>
  <li><a href="<?= $row['social_link']; ?>" class="twitter"><i class="fa fa-<?= $row['social_fa_class']; ?>"></i></a></li>
<?php endwhile; ?>
</ul>   
<!-- /Social Nav-->
  <!-- Add your site or application content here -->
  <script src="js/vendor/jquery-1.12.0.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.enllax.min.js"></script>
  <script src="js/slick.min.js"></script>
  <script src="js/plugins.js"></script>
  <script src="js/main.js"></script>
</body>
</html>
