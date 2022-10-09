<?php namespace App;

use CodeIgniter\Test\FeatureTestCase;

class TestRoute extends FeatureTestCase
{
    public function testFoo(){
        $routes = [
            [ 'get', '/', 'Home::index' ]
          ];
         
         $result = $this->withRoutes($routes)
             ->get('index');
        $this->assertTrue($result->isOK());

    }
}