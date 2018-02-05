<?php
namespace osr\Controller;
use osr\Factory\UserFactory;
use osr\Factory\ResearchGrantFactory;
use osr\Factory\TravelGrantFactory;
use osr\Factory\InternationalGrantFactory;
use osr\Factory\GraduateGrantFactory;
use osr\Factory\StudentFactory;

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
      $arr += $researchInfo->BuildForm(TRUE, $arr);
    }else{
      $arr += $researchInfo->BuildForm(FALSE, $arr);
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
    $student = new StudentFactory;
    $arr = $student->RetrieveMenu();

    return \PHPWS_Template::process($arr, 'osr', 'studentmenu.tpl');
  }

}
 ?>
