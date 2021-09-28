<div class="row">
    <ul class="breadcrumb">
        <li><a href="<?php echo base_url(); ?>">Home</a></li>
        <li><a href="">Delivery Trace</a></li>
    </ul>
    <div class="col-md-12" style="padding:5%;">
        <h2 style="color: green;">
            <?php
            $status = $trace->delivery_status;
            if($status == 0)
            {
                echo 'Verifying Delivery Information';
            }
            if($status == 1)
            {
                echo 'Your Package is on the Way';
            }
            if($status == 2)
            {
                echo 'Package Delivered';
            }
            ?>
        </h2>
    </div>
</div>