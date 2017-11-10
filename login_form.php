<?php include 'core/init.php';?>

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
		<br>
		<div class="row">
			<article class="row">
				<section class="col-lg-8">
                         <div class="jumbotron">
                              <h2>The Log In Form</h2>
                         </div>
                         <form class="panel-group form-horizontal" role="form" action="login.php" method="post">
                              <div class="panel panel-default">
                                   <div class="panel-heading">Login Area</div>
                                   <div class="panel-body">
                                        <div class="form-group">
                                             <label for="username" class="control-label col-sm-4">User Name</label>
                                             <div class="col-sm-7">
                                                  <input type="text" id="username" placeholder="User Name" 
											  name="user_name" class="form-control">
                                             </div>
                                        </div>
                                        <div class="form-group">
                                             <label for="password" class="control-label col-sm-4">Password</label>
                                             <div class="col-sm-7">
                                                  <input type="password" id="password" class="form-control" name="password" placeholder="Insert Password">
                                             </div>
                                        </div>
                                        <div class="form-group">
                                             <div class="col-sm-12">
                                                  <button type="submit" class="btn btn-success btn-block" name="login">Log in</button>
                                             </div>
                                        </div>
                                   </div>
                              </div>
                         </form>
				</section>
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