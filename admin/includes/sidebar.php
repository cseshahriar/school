<?php include_once('config.php'); ?>
<div class="container-fluid content_full"> 
    <div class="row">
        <div class="col-md-2 sidebar pd0">
            <div class="side_user">
                <?php 
                     $id = $_SESSION['userid'];
                     $select ="SELECT * FROM tbl_user WHERE id='$id' ";
                     $query = mysqli_query($dbconnect, $select);
                     $row = mysqli_fetch_array($query);
                ?>
                <img class="img-responsive" src="uploads/<?= $row['image']; ?>"/>
                <h4><?php echo $_SESSION['name']; ?></h4>
                <span><i class="fa fa-circle"></i>  Online</span>
            </div>
            <h2>MAIN NAVIGATION</h2> 
            <ul>
                <li><a href="index.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
                <?php if($_SESSION['role'] <= 1){?>
                    <li><a href="all-user.php"><i class="fa fa-user-circle"></i> User</a></li>
                <?php } ?>
                <?php if($_SESSION['role'] <= 2){ ?>
                <li><a href="all-sliders.php"><i class="fa fa-sliders"></i> Sliders</a></li>
                <li><a href="welcome-messages.php"><i class="fa fa-comment-o"></i> Welcome</a></li>
                <li><a href="#"><i class="fa fa-image"></i> Gallery</a></li>
                <?php } ?>
                <li><a href="logout.php"><i class="fa fa-sign-out"></i> Logout</a></li>
            </ul>
        </div><!--sidebar end-->