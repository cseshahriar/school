<?php require_once('config.php'); ?>
<!-- photo slider -->
<section>
  <div class="container">
    <div class="col-sm-12 text-center">
        <div class="footer-control">
           <div class="img-responsive pre"><img src="img/arrow-right.png" alt=""></div>
           <div class="title-school"> photos </div>
           <div class="img-responsive next"> <img src="img/arrow-left.png" alt=""></div>
           <div class="clearfix"></div>
        </div>
      </div>
      <div class="clearfix"></div>  
      <div class="footer-slick">
      <?php 
          $select = "SELECT * FROM photo_slider";
          $query = mysqli_query($dbconnect, $select);
          while($pslider = mysqli_fetch_array($query)) : ?>
          <div class="col-sm-4"><!--col-sm-4 start-->
              <div class="footer-item">
                <div class="port-1 effect-2">
                  <div class="image-box">
                      <img src="admin/uploads/<?= $pslider['pslide_image']; ?>" alt="Image-2">
                  </div>
                  <div class="text-desc">
                    <h3><?= $pslider['pslide_title']; ?></h3>
                      <p><?= $pslider['pslide_details']; ?></p>
                    <a href="#" class="btn"><?= $pslider['pslide_btn_text']; ?></a>
                  </div>
                </div>
              </div>
          </div><!--col-sm-4 end-->
        <?php endwhile; ?>

    </div><!--footer-slick-->
  </div>
</section> 
<!-- /photo slider -->