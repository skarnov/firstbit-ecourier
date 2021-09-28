<div class="row">
    <ul class="breadcrumb">
        <li><a href="<?php echo base_url(); ?>">Home</a></li>
        <li><a href="">Corporate Delivery Form</a></li>
    </ul>
    <div class="col-md-12">
        <div style="background-color:red; color:white;"><?php echo validation_errors(); ?></div>
        <h3 style="color:green">
            <?php
            $msg = $this->session->userdata('save_personal_delivery');
            if (isset($msg)) {
                echo $msg;
                $this->session->unset_userdata('save_personal_delivery');
            }
            ?>
        </h3>
        <form id="defaultForm" method="POST" class="form-horizontal" action="<?php echo base_url(); ?>customer/save_delivery">
            <div class="col-md-12">  
                <div class="col-md-6">
                    <legend><small>Sender Details</small></legend>
                    <div class="form-group">
                        <label class="col-md-4">Sender Name / <br/>Organization Name <span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="text" name="sender_name" placeholder="Sender Name/Sender Organization Name" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4">Sender Address <span class="required">*</span><br><small>Please Mention : House, Road, Area, Nearest Landmark</small></label>
                        <div class="col-md-8">
                            <input type="text" name="pick_address" placeholder="Detail Pick Address" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4">Sender Landmark<span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="text" name="sender_landmark" placeholder="Sender Landmark" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4">Sender Mobile<span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="text" name="sender_mobile" placeholder="Sender Mobile" class="form-control">
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <legend><small>Receiver Details</small></legend>
                    <div class="form-group">
                        <label class="col-md-4">Receiver Name / <br/>Organization Name <span class="required">*</span></label>
                        <div class="col-md-8">
                            <input type="text" name="receiver_name" placeholder="Receiver Name/Organization Name" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4">Detail Delivery Address <span class="required">*</span><br><small>Please Mention : House, Block, Road, Nearest Landmark</small> </label>
                        <div class="col-md-8">
                            <input type="text" name="drop_address" placeholder="Detail Delivery address"  class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4">Receiver Landmark <span class="required">*</span><br></label>
                        <div class="col-md-8">
                            <input type="text" name="receiver_landmark" placeholder="Enter Receiver Landmark" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-4">Receiver Mobile Number <span class="required">*</span></label>
                        <div class="col-xs-8">
                            <input type="text" name="receiver_mobile" placeholder="Receiver Mobile Number" class="form-control">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="col-md-6">
                    <legend><small>Delivery Details</small></legend>
                    <label class="col-md-4">Delivery Time<span class="required">*</span></label>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">
                                <input type="radio" name="delivery_time" value="24" checked=""> Within 24 Hour
                            </label><br/>
                            <label class="control-label">
                                <input type="radio" name="delivery_time" value="48"> Within 48 Hour
                            </label><br/>
                            <label class="control-label">
                                <input type="radio" name="delivery_time" value="71"> Within 72 Hour
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-4">Product Details <span class="required">*</span></label>
                        <div class="col-xs-8">
                            <input type="text" name="product_details" placeholder="Product Details" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-4">Product Weight <span class="required">*</span></label>
                        <div class="col-xs-8">
                            <input type="text" name="product_weight" placeholder="Product Weight" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-4">Product Estimated Price <span class="required">*</span></label>
                        <div class="col-xs-8">
                            <input type="number" name="product_price" placeholder="Receiver Estimated Price" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-4">Delivery Date<span class="required">*</span></label>
                        <div class="col-xs-8">
                            <input type="date" name="delivery_date" placeholder="Delivery Date" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-4">Delivery Charge Given</label>
                        <div class="col-xs-8">
                            <select name="delivery_charge_given" class="form-control select2" style="width: 100%;">
                                <option value="Sender">Sender</option>
                                <option value="Receiver">Receiver</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-4">Note</label>
                        <div class="col-xs-8">
                            <input type="text" name="delivery_note" placeholder="Note" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="form-control btn btn-success">Done</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>