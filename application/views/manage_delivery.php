<div class="container">
    <ul class="breadcrumb">
        <li><a href="<?php echo base_url(); ?>">Home</a></li>
        <li><a href="">Dashboard</a></li>
    </ul>
    <div class="row">
        <div class="col-md-12">
            <table class="table table-bdeliveryed table-striped">
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
                        </tr>
                        <?php
                    }
                    ?>
                </tbody>
            </table>
        </div>  
    </div>
</div>
<br/>