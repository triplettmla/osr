<?php
class StudentController{
  public function get() {
    if (isset($_GET['cmd'])){
      switch ($_GET['cmd']) {
        case 'researchform':
          return $this->buildResearchForm();
        break;
        case 'researchpost':
          return $this->buildResearchPost();
        break;
        case 'travelform':
          return $this->buildTravelForm();
        break;
        case 'travelpost':
          return $this->buildTravelPost();
        break;
        case 'internationalform':
          return $this->buildInternationalForm();
        break;
        case 'internationalpost':
          return $this->buildInternationalPost();
        break;
        case 'graduateform':
          return $this->buildGraduateForm();
        break;

      }
    } else {
      return $this->buildStudentMenu();
    }
  }

  public function buildResearchForm(){
    $researchInfo = new ResearchGrantFactory;
    $majorOptions = $researchInfo->GetMajors();
    $deptOptions = $researchInfo->GetDepartments();
    $submitLink = PHPWS_SOURCE_HTTP . 'index.php?module=osr&cmd=researchpost';
    $arr = array('SUBMITLINK'=>$submitLink,
                'MAJORS'=>implode('', $majorOptions),
                'DEPARTMENTS'=>implode('', $deptOptions));
    return \PHPWS_Template::process($arr, 'osr', 'researchform.tpl');
  }

  public function buildResearchPost(){
    //Call StudentFactory to write to database
    $submitLink = PHPWS_SOURCE_HTTP . 'index.php?module=osr&cmd=researchpost';
    $arr = array('SUBMITLINK'=>$submitLink);
    return \PHPWS_Template::process($arr, 'osr', 'researchpost.tpl');
  }

  public function buildTravelForm(){
    $travelInfo = new TravelGrantFactory;
    $majorOptions = $travelInfo->GetMajors();
    $deptOptions = $travelInfo->GetDepartments();
    $submitLink = PHPWS_SOURCE_HTTP . 'index.php?module=osr&cmd=travelpost';
    $arr = array('SUBMITLINK'=>$submitLink,
                'MAJORS'=>implode('', $majorOptions),
                'DEPARTMENTS'=>implode('', $deptOptions));
    return \PHPWS_Template::process($arr, 'osr', 'travelform.tpl');
  }

  public function buildInternationalForm(){
    $internationalInfo = new InternationalGrantFactory;
    $majorOptions = $internationalInfo->GetMajors();
    $deptOptions = $internationalInfo->GetDepartments();
    $submitLink = PHPWS_SOURCE_HTTP . 'index.php?module=osr&cmd=internationalpost';
    $arr = array('SUBMITLINK'=>$submitLink,
                'MAJORS'=>implode('', $majorOptions),
                'DEPARTMENTS'=>implode('', $deptOptions));
    return \PHPWS_Template::process($arr, 'osr', 'internationalform.tpl');
  }

  public function buildGraduateForm(){
    $graduateInfo = new GraduateGrantFactory;
    $majorOptions = $graduateInfo->GetMajors();
    $deptOptions = $graduateInfo->GetDepartments();
    $submitLink = PHPWS_SOURCE_HTTP . 'index.php?module=osr&cmd=graduatepost';
    $arr = array('SUBMITLINK'=>$submitLink,
                'MAJORS'=>implode('', $majorOptions),
                'DEPARTMENTS'=>implode('', $deptOptions));
    return \PHPWS_Template::process($arr, 'osr', 'graduateform.tpl');
  }

  public function buildStudentMenu(){

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
