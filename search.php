<?php include 'core/init.php'?>
<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="utf-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
     <title>NewsBay Informations</title>
     <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
     <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
     <link href='https://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
     <!-- Bootstrap -->
     <link href="css/bootstrap.min.css" rel="stylesheet"><link href="css/custom.css" rel="stylesheet">


</head>
<body>
<?php include 'includes/header.php'; ?>
<div class="container">
     <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
               <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
               <li data-target="#carousel-example-generic" data-slide-to="1"></li>
               <li data-target="#carousel-example-generic" data-slide-to="2"></li>
          </ol>

          <!-- Wrapper for slides -->
          <div class="carousel-inner">
               <div class="item active">
                    <img src="images/scroll/TeamLogic.jpg" alt="...">
                    <div class="carousel-caption">
                         <h3>Caption Text</h3>
                    </div>
               </div>
               <div class="item">
                    <img src="images/scroll/allinone.jpg" alt="...">
                    <div class="carousel-caption">
                         <h3>Caption Text</h3>
                    </div>
               </div>
               <div class="item">
                    <img src="images/scroll/novinky.jpg" alt="...">
                    <div class="carousel-caption">
                         <h3>Caption Text</h3>
                    </div>
               </div>
          </div>

          <!-- Controls -->
          <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
               <span class="glyphicon glyphicon-chevron-left"></span>
          </a>
          <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
               <span class="glyphicon glyphicon-chevron-right"></span>
          </a>
     </div> <!-- Carousel -->
     <br>
     <div class="row">
          <article class="row">
               <section class="col-lg-8">

                    <?php
                    if(isset($_GET['search_submit'])){
                        echo '                     <div class="panel panel-default">
                         <div class="panel-body">
                              <h4>You Searched for "'.$_GET['search'] .'"</h4>
                         </div>
                         </div> ';
                         $sel_sql= "SELECT * FROM posts WHERE title LIKE '%$_GET[search]%' OR description LIKE 
                         '%$_GET[search]%'";
                         $run_sql= mysqli_query($conn,$sel_sql);
                         while($rows = mysqli_fetch_assoc($run_sql)){
                              echo '           
                                   <div class="panel panel-success">
                                              <div class="panel-heading">
                                                   <h3><a href="post.php?post_id=' .$rows['posts_id']. ' ">' . $rows['title'] .'</a></h3>
                                                 </div>
                                                 <div class="panel-body">
                                                   <div class="col-lg-4">
                                                     <img src="'.$rows['image'].'"width="100%">
                                                   </div>
                                                   <div class="col-lg-8">
                                                     <p>' . substr($rows['description'],0,300) . '......</p>
                                                   </div>
                                                       <a href="post.php?post_id=' .$rows['posts_id']. ' " class=" btn btn-primary">Read More</a>
                                             </div>
                                  </div> '
                              ;
                         }
                    }
                    ?>

               </section>
               <?php include 'includes/sidebar.php'; ?>
          </article>
     </div>

     <!-- Fixed footer -->
     <div class="navbar navbar-inverse navbar-fixed-bottom"  role="navigation">
          <div class="container">
               <div class="navbar-text pull-left">
                    <p>&copy; 2016 Dragan Stojanovic - News</p>
               </div>
               <div class="navbar-text pull-right">
                    <a href="https://www.facebook.com/"><i class="fa fa-facebook-square fa-2x"></i></a>
                    <a href="https://twitter.com"><i class="fa fa-twitter fa-2x"></i></a>
                    <a href="https://accounts.google.com"><i class="fa fa-google-plus fa-2x"></i></a>
                    <a href="https://www.instagram.com/?hl=en"><i class="fa fa-instagram fa-2x"></i></a>
               </div>
          </div>
     </div>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->


     <!-- Registracija -->
     <div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
               <div class="modal-content">
                    <div class="modal-header">
                         <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                         <h4 class="modal-title" id="myModalLabel">Molimo Vas registrujte se</h4>
                    </div>
                    <div class="modal-body">
                         <form role="form" action="core/register.php" method="POST">
                              <div class="form-group">
                                   <label for="usr">Ime:</label>
                                   <input type="text" class="form-control" id="usr" name="first_name">
                              </div>
                              <div class="form-group">
                                   <label for="usr">Prezime:</label>
                                   <input type="text" class="form-control" id="usr" name="last_name">
                              </div>
                              <div class="form-group">
                                   <label for="usr">Email:</label>
                                   <input type="text" class="form-control" id="usr" name="email">
                              </div>
                              <div class="form-group">
                                   <label for="usr">Korisničko ime:</label>
                                   <input type="text" class="form-control" id="usr" name="username">
                              </div>
                              <div class="form-group">
                                   <label for="pwd">Lozinka:</label>
                                   <input type="password" class="form-control" id="pwd" name="password">
                              </div>
                              <div class="form-group">
                                   <label for="pwd">Ponovi lozinku:</label>
                                   <input type="password" class="form-control" id="pwd" name="passwordA">
                              </div><hr>
                              <button type="submit" class="btn btn-primary" name="register">Registruj me</button>
                         </form>
                    </div>
               </div>
          </div>
     </div>

     <!-- Login -->
     <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
               <div class="modal-content">
                    <div class="modal-header">
                         <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                         <h4 class="modal-title" id="myModalLabel">Molimo Vas ulogujte se</h4>
                    </div>
                    <div class="modal-body">
                         <form role="form" action="core/login.php" method="POST">
                              <div class="form-group">
                                   <label for="usr">Korisničko ime:</label>
                                   <input type="text" class="form-control" id="usr" name="log_username">
                              </div>
                              <div class="form-group">
                                   <label for="pwd">Lozinka:</label>
                                   <input type="password" class="form-control" id="pwd" name="log_password">
                              </div><hr>
                              <button type="submit" class="btn btn-primary" name="login">Uloguje me</button>
                         </form>
                    </div>
               </div>
          </div>
     </div>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
     <!-- Include all compiled plugins (below), or include individual files as needed -->
     <script src="js/bootstrap.min.js"></script>
     <script>
          $('.carousel').carousel({
               interval: 5000
          })
     </script>
</body>
</html>