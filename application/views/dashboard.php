<div class="container">
    <ul class="breadcrumb">
        <li><a href="<?php echo base_url(); ?>">Home</a></li>
        <li><a href="">Dashboard</a></li>
    </ul>
    <div class="row">
        <div class="col-xs-12 col-md-2">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span class="glyphicon glyphicon-globe"></span> Dashboard
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-12 col-md-8 text-center">
                            <a href="<?php echo base_url(); ?>customer/manage_delivery" class="btn btn-success">Manage Delivery</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-9">
            <h3 style="color:green">
                <?php
                $msg = $this->session->userdata('save_customer');
                if (isset($msg)) {
                    echo $msg;
                    $this->session->unset_userdata('save_customer');
                }
                ?>
            </h3>
            <form action="<?php echo base_url(); ?>customer/update_customer" method="POST" class="form-horizontal">
                <fieldset id="account">
                    <legend>Update Your Details</legend>
                    <div class="form-group">
                        <label class="col-xs-3 control-label">Name</label>
                        <div class="col-xs-9">
                            <input type="text" name="customer_name" value="<?php echo $customer->customer_name; ?>" class="form-control">
                            <input type="hidden" name="customer_id" value="<?php echo $customer->customer_id; ?>">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-3 control-label">Address</label>
                        <div class="col-xs-9">
                            <input type="text" name="customer_address" value="<?php echo $customer->customer_address; ?>" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-3 control-label">Email</label>
                        <div class="col-xs-9">
                            <input type="email" name="customer_email" value="<?php echo $customer->customer_email; ?>" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-3 control-label">Current Password</label>
                        <div class="col-xs-9">
                            <input type="text" value="<?php echo $customer->customer_password; ?>" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-3 control-label">New Password</label>
                        <div class="col-xs-9">
                            <input type="password" name="new_password" placeholder="Enter New Password" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-3 control-label">Confirm New Password</label>
                        <div class="col-xs-9">
                            <input type="password" name="confirm_password" placeholder="Confirm Password" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-3 control-label">Mobile</label>
                        <div class="col-xs-9">
                            <input type="tel" name="customer_mobile" value="<?php echo $customer->customer_mobile; ?>" class="form-control">
                        </div>
                    </div>
                </fieldset>
                <div class="buttons">
                    <div class="pull-right">
                        <input type="submit" value="Update" class="btn btn-primary">
                    </div>
                </div>
            </form>
        </div>  
    </div>
</div>
<br/>