<?php  
  require_once('function/functions.php'); 
  getHeader(); ?>
<!-- banner -->
<?php 
  $select = "SELECT * FROM banner WHERE banner_cat_id='2' ";
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
      <!-- admission page content -->
      <div class="col-sm-9">
        <article>
          <?php 
            $select = "SELECT * FROM posts WHERE post_cat_id='3' ";
            $query = mysqli_query($dbconnect, $select);
            $row = mysqli_fetch_array($query);
           ?>
          <h1><?= $row['post_title'] ?></h1>
          <p><img src="admin/uploads/<?= $row['post_image'] ?>" class="img-responsive" alt="about image"><p>
           <?= $row['post_details'] ?>
        </article>
      </div>
      <!-- admission page content -->
  </div>
</section>
<?php 
  getPhotoSlider();
  getFooter();
?>