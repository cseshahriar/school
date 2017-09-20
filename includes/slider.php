<!-- slider -->
<?php 
  require_once('config.php');
 ?>
<section class="slider-main">
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-generic" data-slide-to="1"></li>
      <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
    <?php
      $query = "SELECT * FROM sliders";
      $sqlQuery = mysqli_query($dbconnect, $query);
      while($row = mysqli_fetch_array($sqlQuery)) : ?>
      <div class="item  active">
        <img data-animation="animated pulse" src="admin/uploads/<?= $row['slide_image']; ?>" alt="">
        <div class="carousel-caption text-center">
          <h3 data-animation="animated bounceInLeft"><?= $row['slide_title']; ?></h3>
          <p data-animation="animated bounceInRight"><?= $row['slide_description']; ?></p>
          <a data-animation="animated flipInX" href="#">Read More</a>
        </div>
      </div>
    <?php endwhile; ?>

    </div>
    <!-- Controls -->
    <a class="left left-control" href="#" role="button" data-slide="prev">
    <img src="img/left-slider.png" class="img-responsive" alt="">
    </a>
    <a class="right right-control" href="#" role="button" data-slide="next">
    <img src="img/right-slider.png" class="img-responsive" alt="">
    </a>
  </div>
</section>   
<!-- / slider   -->