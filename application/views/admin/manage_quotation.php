<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Manage Quotation
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="<?php echo base_url(); ?>ecourier/add_quotation">Add New Quotation</a></li>
            <li class="active">Manage Quotation</li>
        </ol>
    </section>
    <section class="content">
        <div class="box">
            <div class="box-body">
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Mobile</th>
                            <th>Email</th>
                            <th>Document Type</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($all_quotation as $v_quotation) {
                            ?>
                            <tr>
                                <td><?php echo $v_quotation->mobile; ?></td>
                                <td><?php echo $v_quotation->email; ?></td>
                                <td><?php echo $v_quotation->document_type; ?></td>
                                <td>
                                    <a href="<?php echo base_url(); ?>ecourier/delete_quotation/<?php echo $v_quotation->quotation_id; ?>" class="btn btn-danger" data-toggle="tooltip" title="Delete Quotation" onclick="return check_delete();"><i class="fa fa-trash"></i></a>
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