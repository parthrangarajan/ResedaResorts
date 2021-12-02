<?php include ('partials/menu.php'); ?>


  <div class="main-content">
    <div class="wrapper">
      <h1>Add admin</h1>
      <br>

      <?php if(isset($_SESSION['add'])){
        echo $_SESSION['add'];#displaying session message
        unset($_SESSION['add']);#removing
      } ?>
      <br><br>

      <form class="" action="" method="POST">
        <table class="tbl-30">
          <tr>
            <td>Full Name</td>
            <td><input type='text' name='full_name' placeholder="Enter your full name"></td>

          </tr>
          <tr>
            <td>UserName</td>
            <td><input type='text' name='username' placeholder="Enter your desired username"></td>
          </tr>
          <tr>
            <td>Password</td>
            <td><input type='password' name='password' placeholder="Enter your password"></td>
          </tr>
          <tr>
            <td colspan="2">
              <input type="submit" name="submit" value="Add admin" class="btn-secondary">
            </td>
          </tr>
        </table>
      </form>
    </div>

  </div>

  <?php include ('partials/footer.php'); ?>

<!-- accepting values from form and save to data-->
  <?php
      if (isset($_POST['submit'])) {
        // echo "button clicked"
        $full_name=$_POST['full_name'];
        $username=$_POST['username'];
        $password=md5($_POST['password']);

        // SQL Query to save data
        $sql="INSERT INTO admin_table SET full_name='$full_name',
                                          username='$username',
                                          password='$password'
                                          ";

        $res= mysqli_query($conn, $sql) or die(mysqli_error());
        if ($res==TRUE) {
          // code...
          // echo "DATA INSERTED";
          $SESSION['add']='Added successfully';
          // redirect
          header("location:".SITEURL.'admin/manage-admin.php');
          }
        else{
          $SESSION['add']='Failed to add admin';
          // redirect
          header("location:".SITEURL.'admin/add-admin.php');
        }



      }

   ?>
