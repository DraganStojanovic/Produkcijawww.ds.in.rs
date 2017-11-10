<?php include 'core/init.php';?>

<?php
    if(isset($_POST['submit_user'])) {

         $user_name = $_POST['username'];
         $user_f_name = $_POST['first_name'];
         $user_l_name = $_POST['last_name'];
         $user_email = $_POST['email'];
         $user_password = md5($_POST['password']);
         $user_gender = $_POST['gender'];
         $user_marital_status = $_POST['marital_status'];
         $user_phone_no = $_POST['phone_no'];
         $user_designation = $_POST['designation'];
         $user_website = $_POST['website'];
         $user_address = $_POST['address'];
         $user_about_me = $_POST['about_me'];
         $x = rand( a, b);

         $sql = $conn->query("INSERT INTO users (user_name, user_f_name, user_l_name, user_email, user_password, user_gender, user_marital_status, user_phone_no, user_designation, user_website, user_address, user_about_me)VALUES('{$user_name}', '{$user_f_name}', '{$user_l_name}', '{$user_email}', '{$user_password}', '{$user_gender}', '{$user_marital_status}', '{$user_phone_no}', '{$user_designation}', '{$user_website}', '{$user_address}', '{$user_about_me}', '{user}', 0, '{$x}' )");

    if(!$sql){
      echo ('Check all rows and input all...');
    }
		 if($sql === true){
			?>
				<script>
					alert("You have successfully registered check your mail to confirm registration.");
				</script>

			<?php
      mail($mail, 'verifikacija_naloga', 'Postovani kliknite na link da bi verifikovali registraciju...', 'www.ds.in.rs/login.php?mail=$mail&br=$x');
		 }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="utf-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1">

     <title>NewsBay Informations</title>
     <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
     <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
     <link href='https://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
     <link href="css/bootstrap.min.css" rel="stylesheet"><link href="css/custom.css" rel="stylesheet">


</head>
<body>
<?php include 'includes/header.php'; ?>
<div class="container">
     <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
     <div class="row">
          <article class="row">
               <section class="col-lg-8">
                    <div class="jumbotron">
                         <h2>The Registration Form</h2>
                    </div>
                 <form class="form-horizontal" action="registration.php" method="post" role="form">
                      <div class="form-group">
                           <label for="username" class="col-sm-3 control-label"> User Name *</label>
                           <div class="col-sm-8">
                                <input type="text" class="form-control" name="username" placeholder="User name" id="username">
                           </div>
                      </div>
                      <div class="form-group">
                           <label for="firs_name" class="col-sm-3 control-label"> First Name *</label>
                           <div class="col-sm-8">
                                <input type="text" class="form-control" name="first_name" placeholder="First name" id="first_name">
                           </div>
                      </div>
                      <div class="form-group">
                           <label for="last_name" class="col-sm-3 control-label"> Last Name *</label>
                           <div class="col-sm-8">
                                <input type="text" class="form-control" name="last_name" placeholder="Last name" id="last_name">
                           </div>
                      </div>
                      <div class="form-group">
                           <label for="email" class="col-sm-3 control-label"> email</label>
                           <div class="col-sm-8">
                                <input type="email" class="form-control" name="email" placeholder="Email" id="email">
                           </div>
                      </div>
                      <div class="form-group">
                           <label for="password" class="col-sm-3 control-label"> Password *</label>
                           <div class="col-sm-8">
                            <input type="password" class="form-control" name="password" placeholder="Insert a password" id="password">
                           </div>
                      </div>
                      <div class="form-group">
                           <label for="con_password" class="col-sm-3 control-label"> Confirm Password *</label>
                           <div class="col-sm-8">
                                <input type="password" class="form-control" name="con_password" placeholder="Confirm password" id="con_password">
                           </div>
                      </div>
                      <div class="form-group">
                           <label for="gender" class="col-sm-3 control-label"> Gender</label>
                           <div class="col-sm-3">
                                <select class="form-control" name="gender" id="gender">
                                     <option value="">Select Gender</option>
                                     <option value="male">Male</option>
                                     <option value="female">Female</option>
                                </select>
                           </div>
                           <label for="marital status" class="col-sm-2 control-label"> Marital Status</label>
                           <div class="col-sm-3">
                                <select class="form-control"  name="marital_status" id="marital_status">
                                     <option value="">Select Status</option>
                                     <option value="single">Single</option>
                                     <option value="married">Married</option>
                                     <option value="divorced">Divorced</option>
                                     <option value="other">Other</option>
                                </select>
                           </div>
                      </div>
                      <div class="form-group">
                           <label for="phone_no" class="col-sm-3 control-label"> Phone no:</label>
                           <div class="col-sm-8">
            <input type="text" class="form-control" name="phone_no" id="phone_no" placeholder="Insert your contact No">
                           </div>
                      </div>
                      <div class="form-group">
                           <label for="designation" class="col-sm-3 control-label"> Designation:</label>
                           <div class="col-sm-8">
           <input type="text" class="form-control" name="designation" id="designation" placeholder="Insert your Designation">
                           </div>
                      </div>
                      <div class="form-group">
                           <label for="website" class="col-sm-3 control-label"> Official Website:</label>
                           <div class="col-sm-8">
           <input type="text" class="form-control" name="website" id="website" placeholder="Insert your Official Website">
                           </div>
                      </div>
                      <div class="form-group">
                           <label for="address" class="col-sm-3 control-label"> Address:</label>
                           <div class="col-sm-8">
                                <textarea class="form-control" name="address" id="address" rows="3"></textarea>
                           </div>
                      </div>
                      <div class="form-group">
                           <label for="about_me" class="col-sm-3 control-label"> About me:</label>
                           <div class="col-sm-8">
                                <textarea class="form-control" name="about_me" id="about_me" rows="5"></textarea>
                           </div>
                      </div>
                      <div class="form-group">
                           <label class="col-sm-3 control-label"></label>
                           <div class="col-md-8">
                                <input type="submit" value="Register Yourself" name="submit_user" class="btn btn-block btn-danger" id="subject">
                           </div>
                      </div>
                 </form>


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

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script>
          $('.carousel').carousel({
               interval: 5000
          })
     </script>
</body>
</html>
