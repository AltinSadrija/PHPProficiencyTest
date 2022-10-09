<?php
namespace CodeIgniter;

use CodeIgniter\Test\CIUnitTestCase;
use CodeIgniter\Test\ControllerTestTrait;

class TestShowEmployee extends CIUnitTestCase
{
    use ControllerTestTrait;

    public function testIndex()
    {
        $result = $this->withURI('http://localhost:8080/showemployee')
            ->controller(\App\Controllers\ShowEmployee::Class)
            ->execute('index');

        $this->assertTrue($result->isOK());
    }
}