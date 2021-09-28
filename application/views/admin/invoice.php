<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Invoice
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="<?php echo base_url(); ?>ecourier/manage_delivery"> Manage Delivery</a></li>
            <li class="active">Invoice</li>
        </ol>
    </section>
    <section class="invoice">
        <div class="row">
            <div class="col-xs-12">
                <h2 class="page-header">
                    <i class="fa fa-globe"></i> Delivery ID FC# <?php echo $delivery_info->delivery_id; ?>
                    <small class="pull-right">Date: <?php echo $delivery_info->delivery_date; ?></small>
                </h2>
            </div>
        </div>
        <div class="row invoice-info">
            <div class="col-sm-4 invoice-col">
                Customer Address
                <address>
                    <strong><?php echo $delivery_info->customer_name; ?></strong>
                    <?php
                    $customer_address = $delivery_info->customer_address;
                    if ($customer_address != NULL) {
                        echo '<br>' . $customer_address;
                    }
                    ?>             
                    <br>Mobile: <?php echo $delivery_info->customer_mobile; ?>
                    <?php
                    $customer_email = $delivery_info->customer_email;
                    if ($customer_email != NULL) {
                        echo '<br>' . 'Email: ' . $customer_email;
                    }
                    ?>
                </address>
            </div>
            <div class="col-sm-4 invoice-col">
                Sender Address
                <address>
                    <strong><?php echo $delivery_info->sender_name; ?></strong><br>
                    <?php echo $delivery_info->pick_address; ?><br>
                    <strong>Landmark: </strong><?php echo $delivery_info->sender_landmark; ?><br>
                    <strong>Mobile: </strong><?php echo $delivery_info->sender_mobile; ?><br>
                </address>
            </div>
            <div class="col-sm-4 invoice-col">
                Receiver Address
                <address>
                    <strong><?php echo $delivery_info->receiver_name; ?></strong><br>
                    <?php echo $delivery_info->drop_address; ?><br>
                    <strong>Landmark: </strong><?php echo $delivery_info->receiver_landmark; ?><br>
                    <strong>Mobile: </strong><?php echo $delivery_info->receiver_mobile; ?><br>
                </address>
            </div>
        </div>
        <div class="text-center">
            <h2>
                <?php
                if ($delivery_info->delivery_status == '1') {
                    echo 'Package Delivered';
                }
                ?> 
            </h2>
            <h1 class="btn-danger">
                <?php
                if ($delivery_info->delivery_status == 0) {
                    echo 'Pending';
                }
                ?>   
            </h1>
        </div>
        <div class="row">
            <div class="col-xs-12 table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Delivery Time</th>
                            <th>Product Details</th>
                            <th>Product Weight</th>
                            <th>Product Price</th>
                            <th>Delivery Date</th>
                            <th>Charge Given</th>
                            <th>Delivery Note</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><?php echo $delivery_info->delivery_time; ?></td>
                            <td><?php echo $delivery_info->product_details; ?></td>
                            <td><?php echo $delivery_info->product_weight; ?></td>
                            <td><?php echo $delivery_info->product_price; ?></td>
                            <td><?php echo $delivery_info->delivery_date; ?></td>
                            <td><?php echo $delivery_info->delivery_charge_given; ?></td>
                            <td><?php echo $delivery_info->delivery_note; ?></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</div>