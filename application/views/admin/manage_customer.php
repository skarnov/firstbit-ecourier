<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Manage Customer
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li class="active">Manage Customer</li>
        </ol>
    </section>
    <section class="content">
        <div class="box">
            <div class="box-body table-responsive">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Type</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Mobile </th>
                            <th>Address</th>
                            <th>Landmark</th>
                            <th>Website</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($all_customer as $v_customer) {
                            ?>
                            <tr>
                                <td>
                                    <span class="btn-success">
                                        <?php
                                        if ($v_customer->customer_type == '3') {
                                            echo 'Personal';
                                        }
                                        ?> 
                                    </span>
                                    <span class="btn-danger">
                                        <?php
                                        if ($v_customer->customer_type == '4') {
                                            echo 'Company';
                                        }
                                        ?>   
                                    </span>
                                </td>
                                <td><?php echo $v_customer->customer_name; ?></td>
                                <td><?php echo $v_customer->customer_email; ?></td>
                                <td><?php echo $v_customer->customer_mobile; ?></td>
                                <td><?php echo $v_customer->customer_address; ?></td>
                                <td><?php echo $v_customer->customer_landmark; ?></td>
                                <td><?php echo $v_customer->customer_website; ?></td>
                                <td>
                                    <span class="btn-success">
                                        <?php
                                        if ($v_customer->customer_status == '1') {
                                            echo 'Active';
                                        }
                                        ?> 
                                    </span>
                                    <span class="btn-danger">
                                        <?php
                                        if ($v_customer->customer_status == 0) {
                                            echo 'Inactive';
                                        }
                                        ?>   
                                    </span>
                                </td>
                                <td>
                                    <?php
                                        if ($v_customer->customer_status == '1') {
                                            ?>
                                            <a href="<?php echo base_url(); ?>ecourier/inactive_customer/<?php echo $v_customer->customer_id; ?>" class="btn btn-danger" data-toggle="tooltip" title="Deactive Customer"><i class="fa fa-times"></i></a>
                                            <?php
                                        } else {
                                            ?>
                                            <a href="<?php echo base_url(); ?>ecourier/active_customer/<?php echo $v_customer->customer_id; ?>" class="btn btn-success" data-toggle="tooltip" title="Active Customer"><i class="fa fa-check"></i></a>
                                            <?php
                                        }
                                    ?>
                                    <a href="<?php echo base_url(); ?>ecourier/view_customer_order/<?php echo $v_customer->customer_id; ?>" class="btn btn-primary" data-toggle="tooltip" title="View Order"><i class="fa fa-cart-arrow-down"></i></a>
                                    <a href="<?php echo base_url(); ?>ecourier/delete_customer/<?php echo $v_customer->customer_id; ?>" class="btn btn-danger" data-toggle="tooltip" title="Delete Customer" onclick="return check_delete();"><i class="fa fa-trash"></i></a>
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