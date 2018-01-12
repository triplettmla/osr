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

      }
    } else {
      return $this->buildStudentMenu();
    }
  }

  public function buildResearchForm(){
    //How do I pull majors, departments, etc. from database to build form?
    $submitLink = PHPWS_SOURCE_HTTP . 'index.php?module=osr&cmd=researchpost';
    $arr = array('SUBMITLINK'=>$submitLink);
    return \PHPWS_Template::process($arr, 'osr', 'researchform.tpl');
  }

  public function buildResearchPost(){
    //Call StudentFactory to write to database
    $submitLink = PHPWS_SOURCE_HTTP . 'index.php?module=osr&cmd=researchpost';
    $arr = array('SUBMITLINK'=>$submitLink);
    return \PHPWS_Template::process($arr, 'osr', 'researchpost.tpl');
  }

  public function buildTravelForm(){
    //How do I pull majors, departments, etc. from database to build form?
    $submitLink = PHPWS_SOURCE_HTTP . 'index.php?module=osr&cmd=travelpost';
    $arr = array('SUBMITLINK'=>$submitLink);
    return \PHPWS_Template::process($arr, 'osr', 'travelform.tpl');
  }

  public function buildStudentMenu(){
    $arr = array();
    $today = date("Y-m-d H:i:s");
    /* Grab start date, end date, and notify date from database for each grant
    and determine whether to turn on each grant link */
    $researchOpenDate = '2018-01-01 00:00:00';
    $researchCloseDate = '2018-02-15 00:00:00';
    $researchNotification = '2018-02-28 00:00:00';
    $researchLink = '<h2>OSR Research Grant Application</h2><ul><li>Open Date: ' . $researchOpenDate .
    '</li><li>Close Date: ' . $researchCloseDate . '</li><li>Award Notification Date: ' .
    $researchNotification . '</li>';
    if ($today >= $researchOpenDate and $today <= $researchCloseDate){
      $researchLink .= '<li><a href="index.php?module=osr&cmd=researchform">' .
      'Apply for an OSR Research Grant</a></li></ul>';
    } else {
      $researchLink .= '</ul>';
    }
    $arr['RESEARCHLINK'] = $researchLink;

    $travelOpenDate = '2018-01-01 00:00:00';
    $travelCloseDate = '2018-02-15 00:00:00';
    $travelNotification = '2018-02-28 00:00:00';
    $travelLink = '<h2>OSR Travel Grant Application</h2><ul><li>Open Date: ' . $travelOpenDate .
    '</li><li>Close Date: ' . $travelCloseDate . '</li><li>Award Notification Date: ' .
    $travelNotification . '</li>';
    if ($today >= $travelOpenDate and $today <= $travelCloseDate){
      $travelLink .= '<li><a href="index.php?module=osr&cmd=travelform">' .
      'Apply for an OSR Travel Grant</a></li></ul>';
    } else {
      $travelLink .= '</ul>';
    }
    $arr['TRAVELLINK'] = $travelLink;

    return \PHPWS_Template::process($arr, 'osr', 'studentmenu.tpl');
  }

}
 ?>
