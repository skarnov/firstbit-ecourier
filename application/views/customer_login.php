<div class="container">
    <ul class="breadcrumb">
        <li><a href="<?php echo base_url(); ?>">Home</a></li>
        <li><a href="">Login</a></li>
    </ul>
    <div class="row"> 
        <div class="col-sm-9">
            <h1>Ecourier Login</h1>
            <div class="panel-group">
                <div class="panel panel-default"> 
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <h3 style="color:red">
                                    <?php
                                    $exc = $this->session->userdata('exception');
                                    if (isset($exc)) {
                                        echo $exc;
                                        $this->session->unset_userdata('exception');
                                    }
                                    ?>
                                </h3>
                                <form action="<?php echo base_url(); ?>login/customer_login_check" method="POST">
                                    <div class="form-group">
                                        <div class="form-group">
                                            <label>Client Type</label>
                                            <select name="client_type" class="form-control select2" style="width: 100%;">
                                                <option>Please Select</option>
                                                <option value="1">Personal</option>
                                                <option value="2">Corporate</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="input-email">E-Mail</label>
                                        <input type="text" name="customer_email" value="" placeholder="E-Mail" id="input-email" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="input-password">Password</label>
                                        <input type="password" name="customer_password" value="" placeholder="Password" id="input-password" class="form-control">
                                        <a href="">Forgotten Password</a>
                                    </div>
                                    <input type="submit" value="Login" id="button-login" data-loading-text="Loading..." class="btn btn-primary">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-3 col-md-3 special-product">

        </div>
    </div>
</div>