<?php  
  require_once('function/functions.php'); 
  getHeader(); ?>
<!-- banner -->
<?php 
  $select = "SELECT * FROM banner WHERE banner_cat_id='4' ";
  $query = mysqli_query($dbconnect, $select);
  $row = mysqli_fetch_array($query) ?>
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
      <!-- about content -->
<!-- admission page content -->
    <div class="col-sm-9">
      <article>
      <?php 
            $select = "SELECT * FROM posts WHERE post_cat_id='5' ";
            $query = mysqli_query($dbconnect, $select);
            $row = mysqli_fetch_array($query) ?>
        <h1><?= $row['post_title'] ?></h1>
        <p><img src="admin/uploads/<?= $row['post_image'] ?>" class="img-responsive" alt="about image"></p>
        <?= $row['post_details'] ?>
      </article>
    </div>
<!-- admission page content -->
      <!-- about content -->
  </div>
</section>   
<!--about us page-->  
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
