<?php
//namespace phpws2\Database;
namespace osr\Factory;

class ResearchGrantFactory extends GrantApplicationFactory{
  public function CheckInput($inputData){
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
        case 'Status':
          if (!preg_match("/^[a-zA-Z ]*$/", $inputData[$k]) || empty($inputData[$k])){
            $errMsg[$k . '_error'] = "* Required and only letters and white space allowed";
          }
        break;
        case 'FACollege':
        case 'FADept':
        if (empty($inputData[$k])){
          $errMsg[$k . '_error'] = "* Required.";
        }
        break;
        case 'Honors';
        case 'PriorFunding':
        case 'AmountLess':
        case 'IRBApproved':
        case 'IACUCApproved':
        case 'IBCApproved':
        case 'Abroad':
        case 'Visible':
          if ($inputData[$k] != '0' and $inputData[$k] != '1'){
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
      var_dump($_SESSION['formdata']);
      exit;
      return false;
    }else{
      return $inputData;
    }
  }

  public function SaveData($results){

    $db = \phpws2\Database::getDB();

    // this instantiates a new database object that contains all my connection stuff
    // now I am am going to create a table

    $tbl = $db->addTable('research_apps');

    // This ADDS a table to the database object. I catch the table object so
    // I can manipulate it
    // at this point I can call
    //$result = $db->select();
    // and I will get an array of values from the modules table
    // if I want to limit by a column
    //$tbl->addFieldConditional('title', 'access');*/

    $tbl->addValue('FirstName', $results['FirstName']);
    $tbl->addValue('LastName', $results['LastName']);
    $tbl->addValue('StudentID', $results['StudentID']);
    $tbl->addValue('BannerID', $results['BannerID']);
    $tbl->addValue('Email', $results['Email']);
    $tbl->addValue('GPA', $results['GPA']);
    $tbl->addValue('Phone', $results['Phone']);
    $tbl->addValue('Status', $results['Status']);
    $tbl->addValue('Major', $results['Major']);
    $tbl->addValue('Honors', $results['Honors']);
    $tbl->addValue('FAFirstName', $results['FAFirstName']);
    $tbl->addValue('FALastName', $results['FALastName']);
    $tbl->addValue('FAEmail', $results['FAEmail']);
    $tbl->addValue('FACollege', $results['FACollege']);
    $tbl->addValue('FADept', $results['FADept']);
    $tbl->addValue('Amount', $results['Amount']);
    $tbl->addValue('PriorFunding', $results['PriorFunding']);
    $tbl->addValue('AmountLess', $results['AmountLess']);
    $tbl->addValue('BudgetJustification', $results['BudgetJustification']);
    $tbl->addValue('ResearchTitle', $results['ResearchTitle']);
    $tbl->addValue('ResearchDescription', $results['ResearchDescription']);
    $tbl->addValue('IRBApproved', $results['IRBApproved']);
    $tbl->addValue('IRBProtocol', $results['IRBProtocol']);
    $tbl->addValue('IACUCApproved', $results['IACUCApproved']);
    $tbl->addValue('IACUCProtocol', $results['IACUCProtocol']);
    $tbl->addValue('IBCApproved', $results['IBCApproved']);
    $tbl->addValue('IBCProtocol', $results['IBCProtocol']);
    $tbl->addValue('Abroad', $results['Abroad']);
    $tbl->addValue('Visible', $results['Visible']);
    //ATTENTION: convert to timestamp in database
    $tbl->addValue('ApplicationDate', date("Y-m-d H:i:s", time()));

    $tbl->insert();

    return true;
  }
  public function EmailConfirmation(){
    return true;
  }

}
 ?>
