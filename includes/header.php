<div class="navbar navbar-inverse navbar-fixed-top" role="navigation" xmlns="http://www.w3.org/1999/html">
	     <div class="container">
             <div class="navbar-header">
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                 <span class="sr-only">Toggle navigation</span>
                 <span class="icon-bar"></span>
                 <span class="icon-bar"></span>
                 <span class="icon-bar"></span>
               </button>
               <a class="navbar-brand" href="index.php"><strong><i>NewsBay</i></strong></a>
             </div>
             <div class="navbar-collapse collapse">
               <ul class="nav navbar-nav navbar-right">
                 <li><a href="index.php">Home</a></li>
				 
                    <?php
                    $sel_cat = "SELECT * FROM category";
                    $run_cat = mysqli_query($conn,$sel_cat);
                    while($rows = mysqli_fetch_assoc($run_cat)){
                         echo '<li><a href="menu.php?cat_name='.$rows['category_name'].'">'.ucfirst($rows['category_name'])
                              .'</a></li>';
                    }
                    ?>
<?php 
	if(!isset($_SESSION['user_id'])){
		echo "<li><a href='registration.php'>Sign Up</a></li>"; // U slucaju da je korisnik ulogovan, ne prikazuje se SIGN IN link za registraciju.
	}
?>

<?php
if (!isset($_SESSION['ulogovan'])) {
  echo '<li><a href="login_form.php">Log In</a></li>';
} else {
  echo '<li><a href="core/logout.php">Log Out</a></li>';
}

?>
                   </ul>
				   
             </div>
			 
       </div>

</div>

<div class="intro">
       <div class="logo">
      	  <h1><a href="index.php">NewsBay</a></h1>
		  </div>
</div>
<br>


