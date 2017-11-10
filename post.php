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
                         <h2>NewsBay Aplication</h2>
                    </div>
               </div>
               <div class="item">
                    <img src="images/scroll/allinone.jpg" alt="...">
                    <div class="carousel-caption">
                         <h2>NewsBay Aplication</h2>
                    </div>
               </div>
               <div class="item">
                    <img src="images/scroll/novinky.jpg" alt="...">
                    <div class="carousel-caption">
                         <h2>NewsBay Aplication</h2>
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
                      $sel_sql = "SELECT * FROM posts WHERE posts_id = '$_GET[post_id]'";
                      $run_sql = mysqli_query($conn,$sel_sql);
                      while($rows = mysqli_fetch_assoc($run_sql)){
                           echo '
                                   <div class="panel panel-default">
                                        <div class="panel-body">
                                             <div class="panel-header">
                                                  <h2>'.$rows['title'].'</h2>
                                             </div>
                                             <img src="'.$rows['image'].'" width="100%">
											 <hr>
                                             <p>'.$rows['description'].'</p>
                                        </div>
                                   </div>
                           ';
                      }
                    
					if(isset($_SESSION['user_id'])){ // Ako je podesena sesija za user_id, tj ako je korisnik ulogovan, prikazuje mu se forma za unos komentara.
						?>
						<div class="jumbotron">
                         <h4>Comment on post</h4>
                         <br>
                    <form class="form-horizontal" action="#" method="POST" role="form">
                    <div class="form-group">
                         <label for="name" class="col-sm-2 control-label">Name:</label>
                         <div class="col-md-8">
                              <input type="text" name="name" class="form-control" placeholder="Insert Your Name" id="name">
                          </div>
                    </div>
                    
                    <div class="form-group">
                         <label for="comment" class="col-sm-2 control-label">Comment:</label>
                         <div class="col-md-8">
                                <textarea class="form-control" name="text" rows="10" style="resize:none;"></textarea>
                         </div>
                    </div>
                         <div class="form-group">
                              <label class="col-sm-2 control-label"></label>
                              <div class="col-md-8">
                                   <input type="submit" name="submit" class="btn btn-block btn-primary" id="subject">
                              </div>
                         </div>
                    </form>
                     </div>
					 <?php
						// Ovom logikom ispod se unose komentari u bazu. Proveravamo da li je korisnik uneo ime i text komentara ali i proveravamo da li je u getu prosledjen id od vesti koji ubacujemo u promenljivu $post_id a sve to radimo da bi u kolonu posts_id koja je se nalazi u tabeli comments mogli da ubacima taj id od vesti na koju korisnik ostavlja komentar. Proveravamo i da li postoji sesija za user_id, ako postoji ubacujemo je u promenljivu $user_id i taj user_id ubacujemo u kolonu user_id u tabeli comments, a ubacujemo zato da bi taj komentar bio vezan bas za tog korisnika koji je ostavio komentar.
						 if(isset($_POST['name'], $_POST['text'], $_GET['post_id'], $_SESSION['user_id'], $_POST['submit'])){
							$name = $_POST['name'];
							$text = $_POST['text'];
							$post_id = $_GET['post_id'];
							$user_id = $_SESSION['user_id'];
							$submit = $_POST['submit'];
							$query = "INSERT INTO comments(name, text, posts_id, user_id) VALUES('{$name}', '{$text}', '{$post_id}', '{$user_id}')";
							$insert = mysqli_query($conn, $query);
							if($insert == true){
								?>
									<script>
										alert("You have successfully post a comment");
									</script>
								<?php
							}else{
								?>
									<script>
										alert("Failed attempt to post comment");
									</script>
								<?php
							}
						}
					
					}else{ // Ako nije podesena sesija za user_id, znaci da korisnik nije ulogovan i ne prikazuje mu se forma za ostavljanje komentara, nego poruka da mora biti ulogovan da bi moga da ostavlja komentare.
						echo "<div class='jumbotron'>";
                              echo "<h4>Comment on post</h4>";
						echo "<br><h4 style='color:red'>First you must input registration form.Then you have to be logged in to post comments</h4>";
						echo "</div>";
					}
					//prikaz vesti
					//logikom ispod prikazujemo vesti. Opet uzimamo id od trenutne vesti koja je otvorena i ubacujemo u promenljivu $id. U upitu kazemo da nam selektuje sve komentare ali samo tamo gde id od vesti jednak trenutnom id-ju otvorene vesti. To radimo da bi odredjeni komentar korisnika bio vidljiv samo na toj vesti na kojoj je ostavio komentar. Na kraju sa ORDER BY DESC smo poredjali komentare da se prvo prikazuje najnoviji uneti komentar.
					if(isset($_GET['post_id'])){
						$id = $_GET['post_id'];
						$query_show_news = "SELECT * FROM comments WHERE posts_id='{$id}' ORDER BY time DESC";
						$res_show_news = mysqli_query($conn, $query_show_news);
						if(mysqli_num_rows($res_show_news) > 0){
							while($row = mysqli_fetch_assoc($res_show_news)){
								//ovde petljom prikazujemo unete komentare
								echo "<div class='jumbotron'>";
								echo "<h4>" . $row['text'] . "</h4>";
								$time = date("d.M Y H:i", strtotime($row['time']));//ovo je samo formatiranje datuma, da bi lepse izgledalo na strani.
								echo "<em>(" . $row['name'] . ", " . $time . ")</em>";
								echo "</div>";
							}	
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
                    <p>&copy; 2016 Dragan Stojanovic - <strong><i>NewsBay</i></strong></p>
               </div>
               <div class="navbar-text pull-right">
                    <a href="https://www.facebook.com/"><i class="fa fa-facebook-square fa-2x"></i></a>
                    <a href="https://twitter.com"><i class="fa fa-twitter fa-2x"></i></a>
                    <a href="https://accounts.google.com"><i class="fa fa-google-plus fa-2x"></i></a>
                    <a href="https://www.instagram.com/?hl=en"><i class="fa fa-instagram fa-2x"></i></a>
               </div>
          </div>
     </div>
     
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
     <!-- Include all compiled plugins (below), or include individual files as needed -->
     <script src="js/bootstrap.min.js"></script>
     <script>
          $('.carousel').carousel({
               interval: 4000
          })
     </script>
</body>
</html>
