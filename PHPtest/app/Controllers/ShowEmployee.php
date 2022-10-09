<?php
namespace App\Controllers;
use App\Models\EmployeeModel;

class ShowEmployee extends BaseController
{
    public function __construct(){

    $this->EmployeeModel = new EmployeeModel();
    
    }

    public function index(){
        $employeesData = $this->EmployeeModel->findAll();
        $datas = [
            'meta' => array(
                'code' => 200,
                'message' => 'Employees Data'
            ),
            'datas' => array(
                'employeesData' => $employeesData
            )
        ];
        return $this->response->setJSON($datas);
    }
    
    public function show($id = null){
        $employeeData = $this->EmployeeModel->where('id', $id)->first();
        if($employeeData){
            $data = [
                'meta' => array(
                    'code' => 200,
                    'message' => 'Employee Record'
                ),
                'data' => array(
                    'employeeData' => $employeeData
                )
            ];
            return $this->response->setJSON($data);
        }else{
            echo 'No data';
        }
    }
}