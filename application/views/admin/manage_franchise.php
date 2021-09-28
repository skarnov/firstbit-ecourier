<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Manage Franchise
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="<?php echo base_url(); ?>ecourier/add_franchise">Add New Franchise</a></li>
            <li class="active">Manage Franchise</li>
        </ol>
    </section>
    <section class="content">
        <div class="box">
            <div class="box-body">
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Entrepreneur Name</th>
                            <th>Entrepreneur Address</th>
                            <th>Email</th>
                            <th>Mobile</th>
                            <th>Interested Area</th>
                            <th>Experience</th>
                            <th>Details</th>
                            <th>Reason of Choose</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($all_franchise as $v_franchise) {
                            ?>
                            <tr>
                                <td><?php echo $v_franchise->company_name; ?></td>
                                <td><?php echo $v_franchise->company_address; ?></td>
                                <td><?php echo $v_franchise->company_email; ?></td>
                                <td><?php echo $v_franchise->company_mobile; ?></td>
                                <td><?php echo $v_franchise->interested_area; ?></td>
                                <td><?php echo $v_franchise->past_experienced; ?></td>
                                <td><?php echo $v_franchise->details_about_franchise; ?></td>
                                <td><?php echo $v_franchise->company_landmark; ?></td>
                                <td>
                                    <a href="<?php echo base_url(); ?>ecourier/delete_franchise/<?php echo $v_franchise->franchise_id; ?>" class="btn btn-danger" data-toggle="tooltip" title="Delete Franchise" onclick="return check_delete();"><i class="fa fa-trash"></i></a>
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