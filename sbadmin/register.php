<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Web_Tu - Register</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">

  </head>

  <body class="bg-dark">

    <div class="container">
      <div class="card card-register mx-auto mt-5">
        <div class="card-header">Register an Account</div>
        <div class="card-body">
               <table>
<FORM ACTION ="cek.php" METHOD="POST">
              <tr>
                <td>Id Tu</td>
                <td>: <input type ="text" name="IdTu"></td>
              </tr>
              <tr>
                <td>Nama Pegawai</td>
                <td>: <input type ="text" name="nama_pegawai"></td>
              </tr>
              <tr>
                <td>Username</td>
                <td>: <input type ="text" name="username"></td>
              </tr>
              <tr>
                <td>Password</td>
                <td>: <input type ="text" name="password"></td>
              </tr>
              <tr>
                <td>Jabatan</td>
                <td>: <input type ="text" name="jabatan"></td>
              </tr>
              
              <tr>

             <td> <input type ="submit" class="btn btn-primary btn-block" value="Register"></td>
        
              </tr>
            
            
                 
              </div>
            </div>
            </table>
        
        </div>
          </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="login.php">Login Page</a>
            <a class="d-block small" href="forgot-password.php">Forgot Password?</a>
          </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  </body>

</html>