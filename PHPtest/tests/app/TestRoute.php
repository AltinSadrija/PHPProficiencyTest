<?php namespace App;

use CodeIgniter\Test\FeatureTestCase;

class TestData extends FeatureTestCase
{
    public function setUp(): void
    {
        parent::setUp();
    }

    public function tearDown(): void
    {
        parent::tearDown();
    }

    public function testFoo(){
        $routes = [
            [ 'get', '/', 'Home::index' ]
          ];
         
         $result = $this->withRoutes($routes)
             ->get('index');
        $this->assertTrue($result->isOK());

    }
}