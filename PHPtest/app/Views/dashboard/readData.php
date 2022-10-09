<?php $this->extend("layout/base")?>

<?php $this->section("content")?>

<?php $worksheet = $readedData->getActiveSheet();?>
<div class="d-flex align-items-start">
    <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
        <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Employees</button>
        <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Departments</button>
        <a class="btn btn-primary nav-link" href="<?= base_url('/');?>">Go Back</a>
    </div>


    <div class="tab-content" id="v-pills-tabContent">
        <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab" tabindex="0">
            <table class="table">
                <?php
                $highestRow = $worksheet->getHighestRow();
                $highestColumn = 'I'; 
                $highestColumn++;
                for ($row = 1; $row <= $highestRow; ++$row) {
                    echo '<tr>' . PHP_EOL;
                    for ($col = 'A'; $col != $highestColumn; ++$col) {
                        echo '<td>' .$worksheet->getCell($col . $row)->getValue() .'</td>' . PHP_EOL;
                    }
                    echo '</tr>' . PHP_EOL;
                }
                ?>
            </table>
        </div>
        <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab" tabindex="0">
            <table class="table">
                <?php 
                    $highestColumn = $worksheet->getHighestColumn();
                    $highestRow = $worksheet->getHighestRow('L');
                    for ($row = 1; $row <= $highestRow; ++$row) {
                        echo '<tr>' . PHP_EOL;
                        for ($col = 'L'; $col != $highestColumn; ++$col) {
                            echo '<td>' .
                            $worksheet->getCell($col . $row)->getValue() .'</td>' . PHP_EOL;
                        }
                        echo '</tr>' . PHP_EOL;
                    }
                ?>
            </table>
        </div>
    </div>
</div>
<?php $this->endSection()?>