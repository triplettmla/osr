<?php
abstract class GrantApplicationFactory{
  public function GetMajors($chosenMajor = ''){
    //pull majors from file to build form
    //Error handling?
    $majorsString = file_get_contents(PHPWS_SOURCE_DIR . 'mod/osr/inc/major.json');

    $majors = json_decode($majorsString);

    $majorOptions[-1] = '<option>Select One</option>';
    foreach ($majors as $majorname) {
      if ($majorname == $chosenMajor)
        $majorOptions[] = "<option selected>$majorname</option>";
      else{
        $majorOptions[] = "<option>$majorname</option>";
      }
    }
    return $majorOptions;
  }

  public function GetDepartments($chosenDept = ''){
    //pull departments from file to build form
    //Error handling?
    $deptString = file_get_contents(PHPWS_SOURCE_DIR . 'mod/osr/inc/department.json');

    $depts = json_decode($deptString);

    $deptOptions[-1] = '<option>Select One</option>';
    foreach ($depts as $deptname) {
      if ($deptname == $chosenDept)
        $deptOptions[] = "<option selected>$deptname</option>";
      else{
        $deptOptions[] = "<option>$deptname</option>";
      }
    }
    return $deptOptions;
  }
  
}

?>
