  <?php
  include_once("connectdb.php");

  if(isset($_POST['register'])){
    $Email = $_POST['Email'];
    $password = $_POST['password'];
    $cpassword = $_POST['cpassword'];
    $hpassword = md5($cpassword);
    
    if(empty($Email)){
        $error[] = 'โปรดป้อนEmailของท่าน';
    }else if(empty($password)){
        $error[] = 'โปรดป้อนpasswordของท่าน';
    }else if(empty($cpassword)){
        $error[] = 'โปรดยืนยันรหัสผ่าน';
    }else{
        $select = $db->prepare("SELECT email FROM user WHERE email=? ");
        $select->execute([$Email]);
        $row = $select->fetch(PDO::FETCH_ASSOC);
        if($Email != $row['email']){
                if($password == $cpassword){
                        $insert = $db->prepare("INSERT INTO user ( email, password) VALUES (?, ?)");
                        $insert->execute([ $Email, $haspassword]);
                        $insertMsg[] = 'สมัครเส็จสิ้น';
                        header('refresh:1;login.php');   
                    }
                }
            }
    }
   
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>System login</title>
</head>
<body>
  
  
    <section class="forms-section">
        <h1 class="section-title">ช. วิเชียรพัฒนกิจ</h1>
        <div class="forms">
          <div class="form-wrapper is-active">
            <button type="button" class="switcher switcher-login">
              Login
              <span class="underline"></span>
            </button>
            <form class="form form-login" method="post">
              <fieldset>
                <legend>Please, enter your email and password for login.</legend>
                <div class="input-block">
                  <label for="login-email">Username or email</label>
                  <input id="login-email" type="email" >
                </div>
                <div class="input-block">
                  <label for="login-password">Password</label>
                  <input id="login-password" type="password" >
                </div>
              </fieldset>
              <button type="submit" class="btn-login">Login</button>
            </form>
          </div>
          <div class="form-wrapper">
            <button type="button" class="switcher switcher-signup">
              Sign Up
              <span class="underline"></span>
            </button>
            <form class="form form-signup" method="post" >
              <fieldset>
                <legend>Please, enter your email, password and password confirmation for sign up.</legend>
                <div class="input-block">
                  <label for="signup-email">E-mail</label>
                  <input id="signup-email" name="Email" type="email" >
                </div>
                <div class="input-block">
                  <label for="signup-password">password</label>
                  <input id="signup-password" name="password" type="password" >
                </div>
                <div class="input-block">
                  <label for="signup-password-confirm">password</label>
                  <input id="signup-password-confirm"  name="cpassword" type="password" >
                </div>
              </fieldset>
              <button type="submit"  name="register" class="btn-signup">register</button>
            </form>
          </div>
        </div>
      </section>
      

    <script src="main.js"></script>
</body>
</html>