<?php

namespace App\Models;

class DepartmentModel extends \CodeIgniter\Model
{
    protected $table = 'departments';
    protected $primaryKey = 'id';
    protected $allowedFields = ['department_name', 'department_leader', 'department_phone'];
}