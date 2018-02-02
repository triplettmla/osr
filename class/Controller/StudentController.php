<?php
namespace osr\Controller;
use osr\Factory\UserFactory;
use osr\Factory\ResearchGrantFactory;
use osr\Factory\TravelGrantFactory;
use osr\Factory\InternationalGrantFactory;
use osr\Factory\GraduateGrantFactory;

class StudentController{
  public function get() {
    if (isset($_GET['cmd'])){
      switch ($_GET['cmd']) {
        case 'researchform':
          return $this->BuildResearchForm();
        break;
        case 'researchpost':
          return $this->BuildResearchPost();
        break;
        case 'travelform':
          return $this->BuildTravelForm();
        break;
        case 'travelpost':
          return $this->BuildTravelPost();
        break;
        case 'internationalform':
          return $this->BuildInternationalForm();
        break;
        case 'internationalpost':
          return $this->BuildInternationalPost();
        break;
        case 'graduateform':
          return $this->BuildGraduateForm();
        break;

      }
    } else {
      return $this->buildStudentMenu();
    }
  }

  public function BuildResearchForm(){
    $arr = array();
    //Current_User::getusername();
    $userName = 'triplettml';
    $student = new UserFactory;
    $userInfo = $student->GetUserData($userName);

    $arr += $userInfo;

    $researchInfo = new ResearchGrantFactory;
    if (isset($_SESSION['formdata'])) {
      $arr += $_SESSION['formdata'];
      unset($_SESSION['formdata']);
      $arr['MAJORS'] = $researchInfo->GetMajors($arr['Major']);
      $arr['DEPARTMENTS'] = $researchInfo->GetDepartments($arr['FADept']);
      $arr['STATUSLIST'] = $researchInfo->GetStatus($arr['Status']);
      $arr['FACOLLEGELIST'] = $researchInfo->GetCollege($arr['FACollege']);
      $arr['HONORSRADIO'] = $researchInfo->BuildYesNoRadioButton('Honors', $arr['Honors']);
      $arr['PRIORFUNDINGRADIO'] = $researchInfo->BuildYesNoRadioButton('PriorFunding', $arr['priorFunding']);
      $arr['AMOUNTLESSRADIO'] = $researchInfo->BuildYesNoRadioButton('AmountLess', $arr['AmountLess']);
      $arr['IRBAPPROVEDRADIO'] = $researchInfo->BuildYesNoRadioButton('IRBApproved', $arr['IRBApproved']);
      $arr['IACUCAPPROVEDRADIO'] = $researchInfo->BuildYesNoRadioButton('IACUCApproved', $arr['IACUCApproved']);
      $arr['IBCAPPROVEDRADIO'] = $researchInfo->BuildYesNoRadioButton('IBCApproved', $arr['IBCApproved']);
      $arr['ABROADRADIO'] = $researchInfo->BuildYesNoRadioButton('Abroad', $arr['Abroad']);
      $arr['VISIBLERADIO'] = $researchInfo->BuildYesNoRadioButton('Visible', $arr['Visible']);
      $arr['ERRORONPAGE'] = 'ERROR: Please correct the fields and resubmit.';
    } else {
      $arr['MAJORS'] = $researchInfo->GetMajors();
      $arr['DEPARTMENTS'] = $researchInfo->GetDepartments();
      $arr['STATUSLIST'] = $researchInfo->GetStatus();
      $arr['FACOLLEGELIST'] = $researchInfo->GetCollege();
      $arr['HONORSRADIO'] = $researchInfo->BuildYesNoRadioButton('Honors');
      $arr['PRIORFUNDINGRADIO'] = $researchInfo->BuildYesNoRadioButton('priorFunding');
      $arr['AMOUNTLESSRADIO'] = $researchInfo->BuildYesNoRadioButton('AmountLess');
      $arr['IRBAPPROVEDRADIO'] = $researchInfo->BuildYesNoRadioButton('IRBApproved');
      $arr['IACUCAPPROVEDRADIO'] = $researchInfo->BuildYesNoRadioButton('IACUCApproved');
      $arr['IBCAPPROVEDRADIO'] = $researchInfo->BuildYesNoRadioButton('IBCApproved');
      $arr['ABROADRADIO'] = $researchInfo->BuildYesNoRadioButton('Abroad');
      $arr['VISIBLERADIO'] = $researchInfo->BuildYesNoRadioButton('Visible');
    }

    return \PHPWS_Template::process($arr, 'osr', 'researchform.tpl');
  }

  public function BuildResearchPost(){
    //Call ResearchApplicationFactory to write to database
    $postData = $_POST;
    $researchInfo = new ResearchGrantFactory;
    $results = $researchInfo->CheckInput($postData);


    //Error in the data? Then reload form
    if ($results == false){
      \PHPWS_Core::reroute('index.php?module=osr&amp;cmd=researchform');
    } else {
      //retrieve static info on logged in user
      $userName = 'triplettml';
      $student = new UserFactory;
      $userInfo = $student->GetUserData($userName);

      $results += $userInfo;
      $researchInfo->saveData($results);
      return \PHPWS_Template::process(array(), 'osr', 'researchpost.tpl');
    }
  }

  public function BuildTravelForm(){
    $travelInfo = new TravelGrantFactory;
    $arr['MAJORS'] = $travelInfo->GetMajors();
    $arr['DEPARTMENTS'] = $travelInfo->GetDepartments();
    return \PHPWS_Template::process($arr, 'osr', 'travelform.tpl');
  }

  public function BuildInternationalForm(){
    $internationalInfo = new InternationalGrantFactory;
    $arr['MAJORS'] = $internationalInfo->GetMajors();
    $arr['DEPARTMENTS'] = $internationalInfo->GetDepartments();

    return \PHPWS_Template::process($arr, 'osr', 'internationalform.tpl');
  }

  public function BuildGraduateForm(){
    $graduateInfo = new GraduateGrantFactory;
    $arr['MAJORS'] = $graduateInfo->GetMajors();
    $arr['DEPARTMENTS'] = $graduateInfo->GetDepartments();

    return \PHPWS_Template::process($arr, 'osr', 'graduateform.tpl');
  }

  public function BuildStudentMenu(){

    /* If there are outstanding Final Reports, students can't apply for new grant */
    $arr = array();
    $today = date("Y-m-d H:i:s");
    /* Grab start date, end date, and notify date from database for each grant
    and determine whether to turn on each grant link */
    $researchOpenDate = '2018-01-01 00:00:00';
    $researchCloseDate = '2018-02-15 00:00:00';
    $researchNotification = '2018-02-28 00:00:00';
    $researchLink = '<h2>OSR Research Grant Application</h2><ul><li>Open Date: ' . $researchOpenDate .
    '</li><li>Close Date: ' . $researchCloseDate . '</li><li>Award Notification Date: ' .
    $researchNotification . '</li></ul>';
    if ($today >= $researchOpenDate and $today <= $researchCloseDate){
      $researchLink .= '<a class="btn btn-primary" href="index.php?module=osr&cmd=researchform" role="button">' .
      'Apply</a>';
    }
    $arr['RESEARCHLINK'] = $researchLink;

    $travelOpenDate = '2018-01-01 00:00:00';
    $travelCloseDate = '2018-02-15 00:00:00';
    $travelNotification = '2018-02-28 00:00:00';
    $travelLink = '<h2>OSR Travel Grant Application</h2><ul><li>Open Date: ' . $travelOpenDate .
    '</li><li>Close Date: ' . $travelCloseDate . '</li><li>Award Notification Date: ' .
    $travelNotification . '</li></ul>';
    if ($today >= $travelOpenDate and $today <= $travelCloseDate){
      $travelLink .= '<a class="btn btn-primary" href="index.php?module=osr&cmd=travelform" role="button">' .
      'Apply</a>';
    }
    $arr['TRAVELLINK'] = $travelLink;

    $internationalOpenDate = '2018-01-01 00:00:00';
    $internationalCloseDate = '2018-02-15 00:00:00';
    $internationalNotification = '2018-02-28 00:00:00';
    $internationalLink = '<h2>International Research Grant Application</h2><ul><li>Open Date: ' . $internationalOpenDate .
    '</li><li>Close Date: ' . $internationalCloseDate . '</li><li>Award Notification Date: ' .
    $internationalNotification . '</li></ul>';
    if ($today >= $internationalOpenDate and $today <= $internationalCloseDate){
      $internationalLink .= '<a class="btn btn-primary" href="index.php?module=osr&cmd=internationalform" role="button">' .
      'Apply</a>';
    }
    $arr['INTERNATIONALLINK'] = $internationalLink;

    /* Only show this link if the student is a graduate student - how do I
    determine this? */
    $graduateOpenDate = '2018-01-01 00:00:00';
    $graduateCloseDate = '2018-02-15 00:00:00';
    $graduateNotification = '2018-02-28 00:00:00';
    $graduateLink = '<h2>Cratis D. Williams Graduate Research Grant Application</h2><ul><li>Open Date: ' . $graduateOpenDate .
    '</li><li>Close Date: ' . $graduateCloseDate . '</li><li>Award Notification Date: ' .
    $graduateNotification . '</li></ul>';
    if ($today >= $graduateOpenDate and $today <= $graduateCloseDate){
      $graduateLink .= '<a class="btn btn-primary" href="index.php?module=osr&cmd=graduateform" role="button">' .
      'Apply</a>';
    }
    $arr['GRADUATELINK'] = $graduateLink;


    return \PHPWS_Template::process($arr, 'osr', 'studentmenu.tpl');
  }

}
 ?>
