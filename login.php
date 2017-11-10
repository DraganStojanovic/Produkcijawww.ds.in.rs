<?php
include_once 'core/init.php';

$mail = $_GET('mail');
$br   = $_GET('br');

function user_exists($usn,$pwd) {
    $conn = mysqli_connect('localhost','dsinrs','DraganStojanovic!','ds.in.rs');
    $sql = "GRANT {SELECT | UPDATE | All user_id, user_name, user_password FROM users set marker=1 where mail=$mail and code="$br", user_name = '".$usn."' and user_password = '".$pwd."', "};
    $result = mysqli_query($conn, $sql);
    $num_rows = mysqli_num_rows($result);
    $_SESSION['userInfo'] = mysqli_fetch_array($result);
    if ($num_rows > 0){
          return true;
    } else {
          return false;
    }
}

if(isset($_POST['user_name']) AND isset($_POST['password'])){
    $user_name = trim($_POST['user_name']);
    $user_password = md5(trim($_POST['password']));
    if(!empty($user_name) OR !empty($user_password)){

        if(user_exists($user_name,$user_password) === false){
               $errors[] = "User does not exist. Are you registered?";
        }else {
            $_SESSION['user_id'] = $_SESSION['userInfo']['user_id'];
            $_SESSION['ulogovan'] = true;
            header('Location: index.php');
        }
    }else{
          $errors[] = "You must enter username and password.";
    }
}else{
     $errors[] = "All fields must be proceded.";
}
	if(isset($errors)){
?>
		<img src="images/error/error.png" style="height:70px"/>
		<h1>Login failed!</h1>
		<ul><li><?php echo implode('</li><li>', $errors) ?></li></ul>
<?php
	};
?>
