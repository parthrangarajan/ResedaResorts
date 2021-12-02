<?php include('partials/menu.php'); ?>

<div class="main-content">
    <div class="wrapper">
        <h1>Manage Booking</h1>

                <br /><br /><br />

                <?php
                    if(isset($_SESSION['update']))
                    {
                        echo $_SESSION['update'];
                        unset($_SESSION['update']);
                    }
                ?>
                <br><br>

                <table class="tbl-full">
                    <tr>
                        <th>Sr.No.</th>
                        <th>Resort</th>
                        <th>Price</th>
                        <th>Location</th>
                        <th>CheckIn Date</th>
                        <th>CheckOut Date</th>
                        <th>Status</th>
                        <th>Customer Name</th>
                        <th>Contact</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Actions</th>
                    </tr>

                    <?php
                        //Get all the orders from database
                        $sql = "SELECT * FROM bookings_table ORDER BY id DESC"; // DIsplay the Latest Order at First
                        //Execute Query
                        $res = mysqli_query($conn, $sql);
                        //Count the Rows
                        $count = mysqli_num_rows($res);

                        $sn = 1; //Create a Serial Number and set its initail value as 1

                        if($count>0)
                        {
                            //Order Available
                            while($row=mysqli_fetch_assoc($res))
                            {
                                //Get all the order details
                                $id = $row['id'];
                                $locaton = $row['location'];
                                $resort = $row['resort'];
                                $price = $row['price'];

                                $checkin_date = $row['checkin_date'];
                                $checkout_date = $row['checkout_date'];
                                $status = $row['status'];
                                $customer_name = $row['customer_name'];
                                $customer_contact = $row['customer_contact'];
                                $customer_email = $row['customer_email'];
                                $customer_address = $row['customer_address'];

                                ?>

                                    <tr>
                                        <td><?php echo $sn++; ?>. </td>
                                        <td><?php echo $resort; ?></td>
                                        <td><?php echo $price; ?></td>
                                        <td><?php echo $location; ?></td>
                                        <td><?php echo $checkin_date; ?></td>
                                        <td><?php echo $checkout_date; ?></td>

                                        <td>
                                            <?php


                                                if($status=="CheckIn")
                                                {
                                                    echo "<label>$status</label>";
                                                }
                                                elseif($status=="InSuite")
                                                {
                                                    echo "<label style='color: green;'>$status</label>";
                                                }
                                                elseif($status=="CheckOut")
                                                {
                                                    echo "<label style='color: red;'>$status</label>";
                                                }
                                            ?>
                                        </td>

                                        <td><?php echo $customer_name; ?></td>
                                        <td><?php echo $customer_contact; ?></td>
                                        <td><?php echo $customer_email; ?></td>
                                        <td><?php echo $customer_address; ?></td>
                                        <td>
                                            <a href="<?php echo SITEURL; ?>admin/update-bookings.php?id=<?php echo $id; ?>" class="btn-secondary">Booking Order</a>
                                        </td>
                                    </tr>

                                <?php

                            }
                        }
                        else
                        {
                            //Order not Available
                            echo "<tr><td colspan='12' class='error'>Bookings not Available</td></tr>";
                        }
                    ?>


                </table>
    </div>

</div>

<?php include('partials/footer.php'); ?>
