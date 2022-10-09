<?php $this->extend("layout/base")?>

<?php $this->section("content")?>
<div class="d-flex align-items-start">
    <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
        <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Employees</button>
        <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Departments</button>
        <a class="btn btn-primary nav-link" href="<?= base_url('/');?>">Go Back</a>
    </div>

    <div class="tab-content" id="v-pills-tabContent">
        <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab" tabindex="0">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Manager</th>
                        <th scope="col">Email</th>
                        <th scope="col">Department</th>
                        <th scope="col">Phone number</th>
                        <th scope="col">Address</th>
                        <th scope="col">Start date</th>
                        <th scope="col">End date</th>
                        <th scope="col">Status</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($employees as $key=> $employee): ?>
                    <tr>
                        <th scope="row"><?=$key?></th>
                        <td><?= $employee['name'] ?></td>
                        <td><?= $employee['manager'] ?></td>
                        <td><?= $employee['email'] ?></td>
                        <td><?= $employee['department'] ?></td>
                        <td><?= $employee['phone_number'] ?></td>
                        <td><?= $employee['address'] ?></td>
                        <td><?= $employee['start_date'] ?></td>
                        <td><?= $employee['end_date'] ?></td>
                        <?php if ($employee['status'] == 'A' ){
                            echo '<td> Active </td> ';
                            }else{
                             echo '<td> Inactive </td> ';
                            }?>
                    </tr>
                    <?php endforeach ?>
                </tbody>
            </table>
        </div>

        <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab" tabindex="0">

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Department name</th>
                        <th scope="col">Departemnt leader</th>
                        <th scope="col">Departemnt phone</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($departments as $key=> $department): ?>
                    <tr>
                        <td><?= $key ?></td>
                        <td><?= $department['department_name'] ?></td>
                        <td><?= $department['department_leader'] ?></td>
                        <td><?= $department['department_phone'] ?></td>
                    </tr>
                    <?php endforeach ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<?php $this->endSection()?>