<div class="row">
    <ul class="breadcrumb">
        <li><a href="<?php echo base_url(); ?>">Home</a></li>
        <li><a href="">Corporate Register</a></li>
    </ul>
    <div class="col-md-12">
        <div style="background-color:red; color:white;"><?php echo validation_errors(); ?></div>
        <h3 style="color:green">
            <?php
            $msg = $this->session->userdata('save_corporate_delivery');
            if (isset($msg)) {
                echo $msg;
                $this->session->unset_userdata('save_corporate_delivery');
            }
            ?>
        </h3>
        <form id="defaultForm" method="POST" class="form-horizontal" action="<?php echo base_url(); ?>courier/save_corporate_delivery">
            <div class="col-md-12">
                <div class="col-md-6">
                    <legend>Company Information</legend>
                    <div class="form-group">
                        <label class="col-md-4">Your Company Name<span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="text" name="company_name" placeholder="Enter Company Name" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4">Company Address<span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="text" name="company_address" placeholder="Enter Company Address" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4">Company Landmark <span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="text" name="company_landmark" placeholder="Enter Landmark" class="form-control">
                        </div>
                    </div>
                </div>    
                <div class="col-md-6">
                    <br/><br/>
                    <div class="form-group">
                        <label class="col-md-4">Email Address<span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="email" name="company_email" placeholder="Enter E-Mail" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4">Password <span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="password" name="company_password" placeholder="Enter Password" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4">Password Confirm <span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="password" name="confirm_password" placeholder="Confirm Your Password Confirm" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4">Mobile Number <span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="tel" name="company_mobile" placeholder="Enter Mobile number" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4">Website URL<span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="text" name="website_url" placeholder="Enter Website URL" class="form-control">
                        </div>
                    </div>
                    <div class="form-group pull-right">
                        <a href="<?php echo base_url(); ?>login" class="btn btn-primary">Login</a>
                        <button type="submit" class="btn btn-success">Done</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>