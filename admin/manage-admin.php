<?php include ('partials/menu.php'); ?>
    <!-- Main Content for Admin -->
    <div class="main-content">
      <div class="wrapper">
        <h2>Manage Admin</h2>

       <!-- add admin -->
       <br>

       <?php if(isset($_SESSION['add'])){
         echo $_SESSION['add'];#displaying session message
         unset($_SESSION['add']);#removing
       } ?>
       <br><br>
        <a href="<?php echo SITEURL; ?>admin/add-admin.php" class="btn-primary">Add Admin</a>
        <br>

        <table class="tbl-full">
          <tr>
            <th>Sr. No.</th>
            <th>Full Name</th>
            <th>Username</th>
            <!-- <th>Passwor</th> -->
            <th>Actions</th>
          </tr>
          <?php
          $sql="SELECT * FROM abmin_table";
          $res=mysqli_query($conn, $sql);
              // check whether query si executed
          if ($res==TRUE) {
            // count rows...
            $count=mysqli_num_rows($res);
            $sn=1;//for id iteration
            if($count>0){
              while ($rows=mysqli_fetch_assoc($res)) {
                // while will run as lon as data is in database
                $id=$rows['id'];
                $full_name=$rows['full_name'];
                $username=$rows['username'];

                // Display values now
                ?>
                <tr>
                  <td><?php echo $sn++ ?></td>
                  <td><?php echo $full_name ?></td>
                  <td><?php echo $username ?></td>
                  <td>
                    <button class="btn-secondary" name="button">Update admin</button>
                    <button class="btn-danger" name="button">Delete admin</button>
                  </td>
                </tr>
                <?php


              }
            }
            else {

            }
          }
          ?>


        </table>
        <br>

      <div class="clearfix"></div>
      </div>
    </div>
  <?php include ('partials/footer.php'); ?>
