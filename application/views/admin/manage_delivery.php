<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Manage Delivery
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li class="active">Manage Delivery</li>
        </ol>
    </section>
    <section class="content">
        <div class="box">
            <div class="box-body">
                <table id="example1" class="table table-bdeliveryed table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Type</th>
                            <th>Customer Mobile</th>
                            <th>Sender Mobile</th>
                            <th>Receiver Mobile</th>
                            <th>Delivery Time</th>
                            <th>Delivery Date</th>
                            <th>Charge Given</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($all_delivery as $v_delivery) {
                            ?>
                            <tr>
                                <td>#FC <?php echo $v_delivery->delivery_id; ?></td>
                                <td>
                                    <span class="btn-success">
                                        <?php
                                        if ($v_delivery->customer_type == '3') {
                                            echo 'Personal';
                                        }
                                        ?> 
                                    </span>
                                    <span class="btn-danger">
                                        <?php
                                        if ($v_delivery->customer_type == '4') {
                                            echo 'Company';
                                        }
                                        ?>   
                                    </span>
                                </td>
                                <td><?php echo $v_delivery->customer_mobile; ?></td>
                                <td><?php echo $v_delivery->sender_mobile; ?></td>
                                <td><?php echo $v_delivery->receiver_mobile; ?></td>
                                <td><?php echo $v_delivery->delivery_time; ?> Hours</td>
                                <td><?php echo $v_delivery->delivery_date; ?></td>
                                <td><?php echo $v_delivery->delivery_charge_given; ?></td>
                                <td>
                                    <span class="btn-success">
                                        <?php
                                        if ($v_delivery->delivery_status == '2') {
                                            echo 'Delivered';
                                        }
                                        ?> 
                                    </span>
                                    <span class="btn-warning">
                                        <?php
                                        if ($v_delivery->delivery_status == 1) {
                                            echo 'Delivering';
                                        }
                                        ?>   
                                    </span>
                                    <span class="btn-danger">
                                        <?php
                                        if ($v_delivery->delivery_status == 0) {
                                            echo 'Verifying';
                                        }
                                        ?>   
                                    </span>
                                </td>
                                <td>
                                    <a href="<?php echo base_url(); ?>ecourier/invoice/<?php echo $v_delivery->delivery_id; ?>" class="btn btn-success" data-toggle="tooltip" title="Invoice"><i class="fa fa-credit-card"></i></a>
                                    <a href="<?php echo base_url(); ?>ecourier/edit_delivery/<?php echo $v_delivery->delivery_id; ?>" class="btn btn-primary" data-toggle="tooltip" title="Edit Delivery Status"><i class="fa fa-shopping-cart"></i></a>
                                    <a href="<?php echo base_url(); ?>ecourier/delete_delivery/<?php echo $v_delivery->delivery_id; ?>" class="btn btn-danger" data-toggle="tooltip" title="Delete Delivery" onclick="return check_delete();"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                            <?php
                        }
                        ?>
                    </tbody>
                </table>
                <div class="pull-right">
                    <?php echo $this->pagination->create_links(); ?>
                </div>
            </div>
        </div>
    </section>
</div>