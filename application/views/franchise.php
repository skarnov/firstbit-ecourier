<div class="row">
    <ul class="breadcrumb">
        <li><a href="<?php echo base_url(); ?>">Home</a></li>
        <li><a href="">Franchise Register</a></li>
    </ul>
    <div class="col-md-12">
        <div style="background-color:red; color:white;"><?php echo validation_errors(); ?></div>
        <h3 style="color:green">
            <?php
            $msg = $this->session->userdata('save_franchise');
            if (isset($msg)) {
                echo $msg;
                $this->session->unset_userdata('save_franchise');
            }
            ?>
        </h3>
        <form id="defaultForm" method="POST" class="form-horizontal" action="<?php echo base_url(); ?>courier/save_franchise">
            <div class="col-md-12">
                <div class="col-md-6">
                    <legend>Franchise Information</legend>
                    <div class="form-group">
                        <label class="col-md-4">Entrepreneur Name<span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="text" name="company_name" placeholder="Enter Company Name" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4">Entrepreneur Address<span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="text" name="company_address" placeholder="Enter Company Address" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4">Email Address<span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="email" name="company_email" placeholder="Enter E-Mail" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4">Mobile Number <span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="tel" name="company_mobile" placeholder="Enter Mobile number" class="form-control">
                        </div>
                    </div>
                </div>    
                <div class="col-md-6">
                    <legend>Your Information</legend>
                    <div class="form-group">
                        <label class="col-md-4">Interested Area To Work<span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="text" name="interested_area" placeholder="Enter Interested Area To Work" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-4">Have Any Experienced on Courier Service</label>
                        <div class="col-xs-8">
                            <select name="past_experienced" class="form-control select2" style="width: 100%;">
                                <option value="No">No</option>
                                <option value="Yes">Yes</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4">Write in Details About You <span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="text" name="details_about_franchise" placeholder="Enter Landmark" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4">Why You Will Chose 1stbit Ecourier Franchise <span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="text" name="company_landmark" placeholder="Enter Landmark" class="form-control">
                        </div>
                    </div>
                    <div class="form-group pull-right">
                        <button type="submit" class="btn btn-success">Done</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>