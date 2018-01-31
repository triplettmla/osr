<?php
namespace osr\Factory;
abstract class GrantApplicationFactory{
  public function GetMajors($chosenMajor = ''){
    //pull majors from file to build form
    //Error handling?
    $majorsString = file_get_contents(PHPWS_SOURCE_DIR . 'mod/osr/inc/major.json');

    $majors = json_decode($majorsString);

    return $this->BuildOptions($majors, $chosenMajor);
  }

  public function GetDepartments($chosenDept = ''){
    //pull departments from file to build form
    //Error handling?
    $deptString = file_get_contents(PHPWS_SOURCE_DIR . 'mod/osr/inc/department.json');

    $depts = json_decode($deptString);

    return $this->BuildOptions($depts, $chosenDept);
  }

  public function GetStatus($chosenStatus = ''){
    $statusList = array('Freshman', 'Sophomore', 'Junior', 'Senior', 'Graduate', 'Doctoral');
    return $this->BuildOptions($statusList, $chosenStatus);
  }

  public function GetCollege($chosenCollege = ''){
    $collegeList = array('Arts and Sciences', 'Business', 'Education', 'Fine and Applied Arts',
                        'Health Sciences', 'Honors College', 'Other/Business Affairs',
                        'School of Music', 'University College');
    return $this->BuildOptions($collegeList, $chosenCollege);
  }

  public function BuildOptions($arrList, $chosenOption = ''){
    foreach ($arrList as $optionItem) {
      if ($optionItem == $chosenOption)
        $optionList[] = "<option selected=true>$optionItem</option>";
      else{
        $optionList[] = "<option>$optionItem</option>";
      }
    }
    return implode($optionList);
  }

  public function BuildYesNoRadioButton($radioName, $chosenButton = ''){
    if ($chosenButton == '0'){
      $radioString = '<input type="radio" id="'. $radioName . '" name="'. $radioName . '" value="0" label="No" checked required>No ' .
                     '<input type="radio" id="' . $radioName . '" name="'. $radioName . '" value="1" label="Yes" required>Yes';
    } elseif ($chosenButton == '1'){
      $radioString = '<input type="radio" id="'. $radioName . '" name="'. $radioName . '" value="0" label="No" required>No ' .
                     '<input type="radio" id="' . $radioName . '" name="'. $radioName . '" value="1" label="Yes" checked required>Yes';
    } else {
      $radioString = '<input type="radio" id="'. $radioName . '" name="'. $radioName . '" value="0" label="No" required>No ' .
                     '<input type="radio" id="' . $radioName . '" name="'. $radioName . '" value="1" label="Yes" required>Yes';
    }
    return $radioString;
  }

  public function testInput($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
  }

}

?>
