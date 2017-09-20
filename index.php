<?php  
require_once('function/functions.php'); 
getHeader();
?>
<!-- slider -->
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
      $query = "SELECT * FROM sliders ORDER BY slide_id DESC LIMIT 0, 3";
      $sqlQuery = mysqli_query($dbconnect, $query);
      while($row = mysqli_fetch_array($sqlQuery)) : ?>
      <div class="item <?php if($row['active_slider'] == 1){echo 'active';} ?>">
        <img data-animation="animated pulse" src="admin/uploads/<?= $row['slide_image']; ?>" alt="">
        <div class="carousel-caption text-center">
          <h3 data-animation="animated bounceInLeft"><?= $row['slide_title']; ?></h3>
          <p data-animation="animated bounceInRight"></p>
          <p data-animation="animated bounceInRight"><?= $row['slide_description']; ?></p>
          <a data-animation="animated flipInX" href="<?= $row['slide_btn_url']; ?>">Read More</a>
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
<!-- welcome message -->
<section class="welcome">
    <div class="container">
        <div class="col-sm-12 text-center">
             <div class="welcome-item">
                <?php 
                  $select = "SELECT * FROM posts WHERE post_cat_id='1' ";
                  $query = mysqli_query($dbconnect, $select);
                  $row = mysqli_fetch_array($query);
                 ?>
                 <h5><?php echo $row['post_title']; ?></h5>
                 <h4 class="title-school"><span><?php echo $row['post_subtitle']; ?></span></h4>
                 <p class="title-school"><?php echo $row['post_details']; ?></p>
                 <a class="btn-create" href="<?= $row['post_btn_url']; ?>"><?= $row['post_btn_txt']; ?></a>
             </div>
        </div>
    </div>
</section>                              
<!-- / welcome message -->
<!-- latest news-->
<section>
  <div class="container">
    <div class="col-sm-12 text-center">
        <div class="controler">
           <div class="img-responsive pre"><img src="img/arrow-right.png" alt=""></div>
           <div class="title-school"> latest news </div>
           <div class="img-responsive next"> <img src="img/arrow-left.png" alt=""></div>
           <div class="clearfix"></div>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="succes-slider">
        <?php 
            $select = "SELECT * FROM news WHERE news_cat_id='1' ";
            $query = mysqli_query($dbconnect, $select);
            while($news = mysqli_fetch_array($query)) : ?>
        <div class="col-sm-4">
          <div class="success-item">
            <div class="image-box">
              <img class="img-responsive" src="admin/uploads/<?= $news['news_image'];?>" alt="Image-1">
                <h2><?= $news['news_title'];?></h2>
            </div>
            <div class="text-desc">
                <h3><?= $news['news_title'];?></h3>
                <p><?= $news['news_details'];?></p>
               <a href="#" class="btn"><?= $news['news_btn_text'];?></a>
            </div>
          </div>
        </div><!--col-sm-4-main end-->
        <?php endwhile; ?>
      </div><!--succes-slider-->
  </div> <!--container end-->
</section>
<!-- / latest news -->  

<section class="section-default">
  <div class="container">
      <div class="col-sm-6">
            <div class="news-event">
               <h2>Announcements 2015-2016</h2>
               <div class="news-slick">
                <?php 
                  $select = "SELECT * FROM news WHERE news_cat_id='2' ";
                  $query = mysqli_query($dbconnect, $select);
                  while($announce = mysqli_fetch_array($query)) : ?>

                 <div class="news-item">
                   <a href="#">
                     <div class="news-clock">
                        <?php 
                            $date = explode('-',$announce['news_date']);
                            $month = $date[1];
                            $dateObj = DateTime::createFromFormat('!m', $month);
                            $monthName = $dateObj->format('F');
                            $day = $date[2]; 
                        ?>
                         <h4><?php echo $monthName; ?></h4>
                         <h3><?php echo $day; ?></h3>
                     </div>
                     <div class="news-details">
                         <p><?= $announce['news_details'] ?></p>
                     </div>
                     <div class="clearfix"></div>
                   </a>
                 </div><!--news-item end-->
               <?php endwhile; ?>


               </div>
                <a href="#" class="news-info"><span>read more</span><i class="fa fa-angle-right"></i></a>
           </div> <!--news-event end-->
      </div><!--col-sm-6 end-->

       <div class="col-sm-6">
          <div class="news-event">
               <h2>Upcoming Events</h2> 
                <div class="news-right">
                  <?php 
                    $select = "SELECT * FROM news WHERE news_cat_id='3' ";
                    $query = mysqli_query($dbconnect, $select);
                    while($event = mysqli_fetch_array($query)) : ?>
                      <div class="right-item">
                         <a href="#">
                            <div class="news-clockr">
                                <img class="img-responsive" src="admin/uploads/<?= $event['news_image']; ?>" alt="">
                            </div>
                            <div class="news-detailsr">
                               <h5><?= $event['news_date']; ?></h5>
                               <p><?= $event['news_details']; ?> ...</p>
                            </div>
                            <div class="clearfix"></div>
                          </a>
                      </div><!--news-item end-->
                    <?php endwhile; ?>
                
                </div><!--news-right end-->   
              <a href="#" class="news-info"><span>read more</span><i class="fa fa-angle-right"></i></a>
          </div> <!--news-event end-->
       </div><!--col-sm-6 end-->

  </div>
</section>   
<?php  
  getPhotoSlider();
  getFooter();
?>