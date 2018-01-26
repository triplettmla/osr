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

        case 'FAFirstName':
        case 'FALastName':
          if (!preg_match("/^[a-zA-Z ]*$/", $inputData[$k]) || empty($inputData[$k])){
            $errMsg[$k . '_error'] = "* Required and only letters and white space allowed";
          }
        break;
        case 'Status':
        case 'FACollege':
        case 'FADepartment':
        case 'PriorFunding':
        case 'AmountLess':
        case 'IRBApproved':
        case 'IACUCApproved':
        case 'IBCApproved':
        case 'Abroad':
        case 'Visible':
          if (empty($inputData[$k])){
            $errMsg[$k . '_error'] = "* Required.";
          }
        break;
        case 'FAEmail':
          if (!filter_var($inputData[$k], FILTER_VALIDATE_EMAIL)) {
            $errMsg[$k . '_error'] = "* Required and must be a valid email address.";
          }
        break;
        case 'Amount':
          if (!is_numeric($inputData[$k]) || $inputData[$k] > 500){
            $errMsg[$k . '_error'] = "* Required and must be $500 or less.";
          }
        break;
        case 'IRBProtocol':
          if ($inputData['IRBApproved'] == 'yes' and empty($inputData[$k])){
            $errMsg[$k . '_error'] = "* IRB Protocol is required if IRB Approved.";
          }
        break;
        case 'IACUCProtocol':
          if ($inputData['IACUCApproved'] == 'yes' and empty($inputData[$k])){
            $errMsg[$k . '_error'] = "* IACUC Protocol is required if IACUC Approved.";
          }
        break;
        case 'IBCProtocol':
          if ($inputData['IBCApproved'] == 'yes' and empty($inputData[$k])){
            $errMsg[$k . '_error'] = "* IBC Protocol is required if IBC Approved.";
          }
        break;
        case 'BudgetJustification':
          if (empty($inputData[$k]) || strlen($inputData[$k]) > 1500){
            $errMsg[$k . '_error'] = "* Required and must not exceed max characters.";
          }
        break;
        case 'ResearchTitle':
          if (empty($inputData[$k]) || strlen($inputData[$k]) > 1000){
            $errMsg[$k . '_error'] = "* Required and must not exceed max characters.";
          }
        break;
        case 'ResearchDescription':
          if (empty($inputData[$k]) || strlen($inputData[$k]) > 1000){
            $errMsg[$k . '_error'] = "* Required and must not exceed max characters.";
          }
        break;

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
