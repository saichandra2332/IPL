
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@200;300;400;500&family=Roboto&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@200;300;400;500&family=Roboto&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.js"></script>
    <script src="https://unpkg.com/jspdf@latest/dist/jspdf.umd.min.js"></script>
    <script src="https://rawgit.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/2.0.5/FileSaver.min.js"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Calistoga&display=swap" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.js"></script>
    <script src="https://unpkg.com/jspdf@latest/dist/jspdf.umd.min.js"></script>
    <script src="https://rawgit.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@200;300;400;500&family=Roboto&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10">
            
    <style>
    body {
        font-family: 'Raleway', sans-serif;
        background-color: #1a1d20;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
        align-items: center;
        justify-content: center;
        background-image: url('https://path_to_your_ipl_background_image.jpg');
        background-size: cover;
        background-position: center;
        color: #fff;
    }

    header {
        background-color: #2e3b42;
        color: #fff;
        padding: 10px 0;
        text-align: center;
        width: 100%;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
    }

    header h1 {
        font-size: 36px;
        font-weight: bold;
    }

    form {
        background-color: rgba(0, 0, 0, 0.7);
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
        padding: 25px;
        width: 320px;
        margin: 20px auto;
    }

    form h2 {
        font-size: 28px;
        color: #ffbc00;
        font-weight: bold;
        margin-bottom: 20px;
    }

    label {
        font-size: 14px;
        margin-bottom: 8px;
        color: #fff;
    }

    input {
        width: 100%;
        padding: 12px;
        margin-bottom: 16px;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
        /* background-color: #333; */
        /* color: #fff; */
    }

    input:focus {
        border-color: #ffbc00;
        outline: none;
    }

    button {
        background-color: #ffbc00;
        color: #fff;
        padding: 12px 18px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        width: 100%;
        font-size: 16px;
        font-weight: bold;
    }

    button:hover {
        background-color: #e1a100;
    }

    footer {
        background-color: #2e3b42;
        color: #fff;
        padding: 10px;
        text-align: center;
        width: 100%;
        position: absolute;
        bottom: 0;
        margin-top: auto;
    }

    .ipl-logo {
        width: 80px;
        margin-top: 20px;
    }
</style>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<?php
require_once "config.php";

if (isset($_POST['sub'])) {
    $loginid1 = $_POST['lid'];
    $pwd2 = $_POST['password'];
    $Getdetails = mysqli_query($conn, "SELECT * FROM login WHERE l_name='$loginid1' AND l_pwd='$pwd2' AND l_status='1'") or die(mysqli_error($conn));

    if ($Getdetails && mysqli_num_rows($Getdetails) > 0) {
        echo "<script>
                Swal.fire({
                    icon: 'success',
                    title: 'Login Successful',
                    text: 'Redirecting to DashBoard...',
                    timer: 2000, // 2 seconds
                    showConfirmButton: false,
                    allowOutsideClick: false
                }).then(function() {
                    window.location.href = 'Teams.php';
                });
              </script>";
        exit(); 
    } else {
        echo "<script>
                Swal.fire({
                    icon: 'error',
                    title: 'Login Failed',
                    text: 'Incorrect username or password!',
                });
             </script>";
    }
}
?>

<header>
    <h1>IPL Cricket Login</h1>
</header>

<form id="loginForm" method="POST" onsubmit="return validateForm()">
    <center><h2>Login</h2></center>
    <label for="username">Username:</label>
    <input type="text" name="lid" id="lid" required>

    <label for="password">Password:</label>
    <input type="password" name="password" id="password" required>
    <span class="password-toggle" onclick="togglePassword()"style="position: absolute;left: 855px ;top: 429px; cursor: pointer">👁️‍🗨️</span>


    <center><button type="submit" name="sub" id="sub">Login</button></center>
</form>


    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script>
         function togglePassword() {
                    var passwordInput = document.getElementById('password');
                    var passwordToggle = document.querySelector('.password-toggle');

                    if (passwordInput.type === 'password') {
                        passwordInput.type = 'text';
                        passwordToggle.textContent = '👁️‍🗨️';
                    } else {
                        passwordInput.type = 'password';
                        passwordToggle.textContent = '👁️‍🗨️';
                    }
                }
    </script>
</body>
</html>
