# PHPProficiencyTest

### Step 1. Install phpoffice/phpspreadsheet.
    composer require phpoffice/phpspreadsheet
    
### Step 2. Create a database named phptest and run:
     php spark migrate
#### Or use the sql file inside the project "phptest.sql"

### Step 3. Run the project
     php spark serve
     
### API
#### To show a single result
     localhost:8080/showemployee/{id}
#### To show all
     localhost:8080/showemployees

### Unit Testing
#### Test 1.
     vendor/bin/phpunit tests/app/TestShowEmployee.php

#### Test 2.
     vendor/bin/phpunit tests/app/TestRoute.php
