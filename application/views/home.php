<!-- Welcome Heading -->
<div class="main">
    <div class="row">
        <div class="col-md-12 content">
            <h3>Parcel and Document Delivery Services</h3>
            <p>Ecourier is the Bicycle Based Courier Service in Bangladesh</p>
        </div>
        <div class="col-md-6">
            <div class="col-md-9 col-md-offset-2 trace">
                <h4>ENTER YOUR CONSIGNMENT<br> NUMBER TO TRACE YOUR DELIVERY</h4>
                <p>Fill out our online freight quote form so we can respond with our shipping options and rates.</p>
                <form class="form-inline" method="POST" action="<?php echo base_url(); ?>courier/delivery_trace">
                    <div class="form-group">
                        <input type="number" name="delivery_id" class="form-control">
                    </div>
                    <button type="submit" class="btn btn-success">Submit</button>
                </form>
            </div>
            <div class="col-md-9 col-md-offset-2 quote-box">
                <h4>GET INSTANT QUOTATION</h4>
                <h3 style="color:green">
                    <?php
                    $msg = $this->session->userdata('save_quotation');
                    if (isset($msg)) {
                        echo $msg;
                        $this->session->unset_userdata('save_quotation');
                    }
                    ?>
                </h3>
                <form class="form-inline" method="POST" action="<?php echo base_url(); ?>courier/save_quotation">
                    <div class="form-group">                 
                        <input type="text" name="mobile" class="form-control" placeholder="Mobile">
                    </div>
                    <div class="form-group">
                        <input type="text" name="email" class="form-control" placeholder="Email">
                    </div>
                    <button type="submit" class="btn btn-success">Send</button><br>
                    <span style="float: left;">
                        <input type="radio" name="document_type" value="Parcel" style="width: 20px; float: left;">Parcel
                    </span> 
                    <span style="float: left;"> 
                        <input type="radio" name="document_type" value="Document" style="width: 20px; float: left;">Document
                    </span>
                </form>
                <br/>
                <br/>
                <div class="row">
                    <div class="col-md-1">
                        <img src="<?php echo base_url(); ?>asset/public/img/phone.png" alt="">
                    </div>
                    <div class="col-md-10 col-md-offset-1">
                        <p class="live">Live Support</p>
                        <p class="phone">00000000</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <?php
            $customer_type = $this->session->userdata('customer_type');
            if ($customer_type == 3) {
                ?>
                <div class="col-md-5 individual">
                    <a href="<?php echo base_url(); ?>customer/personal_delivery">Create New Delivery</a>
                </div>
                <?php
            } else {
                ?>
                <div class="col-md-5 individual">
                    <a href="<?php echo base_url(); ?>courier/personal">Personal Delivery</a>
                </div>
                <?php
            }
            ?>
            <?php
            if ($customer_type == 4) {
                ?>
                <div class="col-md-5 col-md-offset-1 individual">
                    <a href="<?php echo base_url(); ?>customer/corporate_delivery">Corporate Delivery</a>
                </div>
                <?php
            } else {
                ?>
                <div class="col-md-5 col-md-offset-1 individual">
                    <a href="<?php echo base_url(); ?>courier/corporate">Corporate Register</a>
                </div>
                <?php
            }
            ?>
            <div class="col-md-11 franchise">
                <a href="<?php echo base_url(); ?>courier/franchise" class="">Franchise Register</a>
            </div>
            <div class="col-md-11 banner">
                <?php
                foreach ($all_banner as $v_banner) {
                    if ($v_banner->banner_position == 1) {
                        ?>
                        <a href="<?php echo $v_banner->banner_link; ?>"><img src="<?php echo base_url() . $v_banner->banner_image; ?>" class="img-responsive" style="width: 100%;" /></a>
                        <?php
                    }
                }
                ?>
            </div>
        </div>
    </div>
</div>   
<!-- End Welcome Heading -->
<div class="row">
    <div class="col-md-3 service">
        <div class="row">
            <div class="col-md-3">
                <img src="<?php echo base_url(); ?>asset/public/img/individual.png" class="img-responsive service-image" /> 
            </div>
            <div class="col-md-9 service-name" style="padding-left: 0%;">
                <span style="font-size: 30px">CORPORATE</span>
                <br/>
                <span style="font-size: 22px; line-height: 0px;">SERVICE</span>
                <br/>
                <br/>
                <a href="" class="btn btn-success" style="width: 80%">Click Here</a>
            </div>
        </div>
        <br/>
        <div class="row">
            <div class="col-md-3">
                <img src="<?php echo base_url(); ?>asset/public/img/ecommerce.png" class="img-responsive service-image" /> 
            </div>
            <div class="col-md-9 service-name" style="padding-left: 0%;">
                <span style="font-size: 30px">MERCHANT</span>
                <br/>
                <span style="font-size: 22px; line-height: 0px;">SERVICE</span>
                <br/>
                <br/>
                <a href="" class="btn btn-success" style="width: 80%">Click Here</a>
            </div>
        </div>
    </div>
    <div class="col-md-9">
        <h2>Welcome to eCourier</h2>
        <p>
            <b>
                eCourier.com.bd is a bicycle based courier service in Dhaka, Bangladesh. eCourier can transport all sorts of documents and parcels from here and there to clients and customers with ultimate delivery solution.
            </b>
        </p>
        <h3>eCourier Mission</h3>
        <p>
            eCourier.com.bd's mission is to provide expedient delivery services to its clients and customers with an environmentally friendly way. Plus, we are providing the specialized and premium postal services to our valuable customers with digital tracking system. Our advanced track and trace software enables our customers to track their parcel's current location anytime.
        </p>
        <h3>eCourier Objective</h3>
        <ul>
            <li>To create a complete customer friendly service-based company whose primary priority is to fulfill customer's demands and expectations.</li>
            <li>The utilization of eCourier.com.bd by the top most E-Commerce and business professionals and single user as well.</li>
            <li>To increase the number of clients served by 50% per year through superior services.</li>
            <li>To develop a profitable start up business within the first two years of operation.</li>
        </ul>
    </div>
</div>
<hr/>
<!--End Category Product-->
<!-- WELCOME POPUP -->
<div class="modal fade" id="welcome" tabindex="-1" role="dialog" aria-labelledby="smallModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Welcome To 1stbit</h4>
                <small>Press The Image Where You Want To Go</small>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-3 item-image">
                        <a href="http://1stbitbd.com/"><img src="<?php echo base_url(); ?>asset/public/img/E.jpg" class="img-rounded" width="200" height="200"></a>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3 item-image">
                        <a href="http://1stbitbd.com/"><img src="<?php echo base_url(); ?>asset/public/img/T.jpg" class="img-rounded" width="200" height="200"></a>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3 item-image">
                        <a href="http://1stbitbd.com/"><img src="<?php echo base_url(); ?>asset/public/img/C.jpg" class="img-rounded" width="200" height="200"></a>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3 item-image">
                        <a href="http://1stbitbd.com/"><img src="<?php echo base_url(); ?>asset/public/img/H.jpg" class="img-rounded" width="200" height="200"></a>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button data-dismiss="modal" type="button" class="btn btn-success" onclick="removeWishlist();">Continue with Ecourier</button>
            </div>
        </div>
    </div>
</div>
<!-- END WELCOME POPUP -->
<script>
    // Welcome POPUP
    $(window).load(function () {
        $('#welcome').modal('show');
    });
    // End Welcome POPUP
</script>