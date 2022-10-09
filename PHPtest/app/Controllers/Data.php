<?php

namespace App\Controllers;
use \PhpOffice\PhpSpreadsheet\IOFactory;
use App\Models\DepartmentModel;
use App\Models\EmployeeModel;
use CodeIgniter\I18n\Time; 


class Data extends BaseController
{
    public function __construct() {

        $this->DepartmentModel = new DepartmentModel;
        $this->EmployeeModel = new EmployeeModel;
    }

    public function read()
    {
        $read = \PhpOffice\PhpSpreadsheet\IOFactory::createReader('Xlsx');
        $read->setReadDataOnly(TRUE);
        $readedData = $read->load($_FILES['read_data']['tmp_name']);

        return view('dashboard/readData', ['readedData' => $readedData]);
    }

    public function import()
    {              
        $read = \PhpOffice\PhpSpreadsheet\IOFactory::createReader('Xlsx');
        $read->setReadDataOnly(TRUE);
        $readedData = $read->load($_FILES['import_data']['tmp_name']);

        $worksheet = $readedData->getActiveSheet();

        $nrDepartment = $worksheet->getHighestRow('L');

        $nrEmployee = $worksheet->getHighestRow();

        $worksheet = $readedData->getActiveSheet()->toArray();

        $rows = count($worksheet)-1;
        if($rows) {

            $departament = array();
            for ($i = 1; $i <= ($nrDepartment -1); ++$i) {
                        
                $departament[] = array(
                    'department_name'     =>$worksheet[$i][11],
                    'department_leader'   =>$worksheet[$i][12],
                    'department_phone'    =>$worksheet[$i][13]
                );
            }

            $this->DepartmentModel->insertBatch($departament);

            $employee = array();
            for ($i = 1; $i <= ($nrEmployee -1); ++$i) {

                $today = Time::today('Europe/Berlin');
                $startDate = date("Y-m-d", strtotime($worksheet[$i][7]));
                $StartDate = Time::parse($startDate, 'Europe/Berlin');
                $endDate = date("Y-m-d", strtotime($worksheet[$i][8]));
                $EndDate = Time::parse($endDate, 'Europe/Berlin');

                if($EndDate->isBefore($today)){
                    $status = 'P';
                } else {
                    $status = 'A';
                };
                
                $employee[] = array(
                    'name'           =>$worksheet[$i][0],
                    'manager'        =>$worksheet[$i][1],
                    'username'       =>$worksheet[$i][2],
                    'email'          =>$worksheet[$i][3],
                    'department'     =>$worksheet[$i][4],
                    'phone_number'   =>$worksheet[$i][5],
                    'address'        =>$worksheet[$i][6],
                    'start_date'     =>$StartDate,
                    'end_date'       =>$EndDate,
                    'status'         =>$status
                );
            }
            
            $this->EmployeeModel->insertBatch($employee);

            return redirect()->route('readRecord');
        
        }else{
            echo 'No Data';
        }
    }

    public function readData()
    {
        $employees = $this->EmployeeModel->findAll();
        $departments = $this->DepartmentModel->findAll();
        
        return view('dashboard/importData', ['employees' => $employees, 'departments' => $departments]);

    }
}