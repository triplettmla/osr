<?php
class ResearchGrantFactory extends GrantApplicationFactory{
  public function checkInput($inputData){
    //Save post data as entered by student
    $postData = $inputData;

    foreach ($inputData as $k => $v) {
      $inputData[$k] = $this->testInput($inputData[$k]);
      switch ($k) {
        case 'Phone':
          $inputData[$k] = preg_replace('/\D+/', '', $inputData[$k]);
          if (strlen($inputData[$k]) != 10)
            $errMsg[$k . '_error'] = "* Required and must include area code.";
        break;
        case 'Status':
        case 'FAFirstName':
          if (empty($inputData[$k])){
            $errMsg[$k . '_error'] = "* Required";
          }
      }
    }
    if (isset($errMsg)){
      $_SESSION['formdata'] = array_merge($postData, $errMsg);
      return false;
    }else{
      return $inputData;
    }
  }

}
 ?>
