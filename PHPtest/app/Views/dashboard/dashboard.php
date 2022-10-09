<?php $this->extend("layout/base")?>

<?php $this->section("content")?>
<div class="row">

    <!-- Read Data Form -->
    <div class="col-12 col-md-6">
        <form method="post" action="<?php echo base_url('/readData');?>" enctype="multipart/form-data">
            <div class="input-group">
                <input type="file" class="form-control" id="inputGroupFile04" name="read_data" require aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                <button class="btn btn-outline-secondary" type="submit" id="inputGroupFileAddon04">Read Data</button>
            </div>
        </form>
    </div>

    <!-- Import Data Form -->
    <div class="col-12 col-md-6">
        <form method="post" action="<?php echo base_url('importData');?>" enctype="multipart/form-data">

            <div class="input-group">
                <input type="file" class="form-control" id="inputGroupFile04" name="import_data" require aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                <button class="btn btn-outline-secondary" type="submit" id="inputGroupFileAddon04">Import Data</button>
            </div>
        </form>
    </div>

</div>
<?php $this->endSection()?>