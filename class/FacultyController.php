<?php
class FacultyController{
  public function get() {
    if (isset($_GET['cmd'])){
      switch ($_GET['cmd']) {
        case 'recommendation':
          /*determine if this is a recommendation for an existing application or new one
          so we can preload or leave empty */
          return $this->buildRecommendation();
        break;
        case 'recommendationpost':
          return $this->buildRecommendationPost();
        break;
        case 'uraform':
          return $this->buildURAForm();
        break;
        case 'urapost':
          return $this->buildURAPost();
        break;

      }
    } else {
      return $this->buildFacultyMenu();
    }
  }

  public function buildFacultyMenu(){
    $arr = array();
    $today = date("Y-m-d H:i:s");
    /* Grab any outstanding applications with this faculty listed as advisor */

    $recommendationLink = '<h2>Outstanding Recommendations</h2><ul>';
    /* List outstanding recommendations here */
    $recommendationLink .= '<li><a href="">Mitzi Triplett for an OSR Research Grant</a></li>';
    $recommendationLink .= '<li><a href="">Kathy Weaver for an OSR Travel Grant</a></li>';
    $recommendationLink .= '<li><a href="">Becki Battista for an International Research Grant</a></li>';

    /* Times the faculty beats the student to the recommendation before
    they submit their application. How will I link this? */
    $recommendationLink .= '</ul><a class="btn btn-primary" href="index.php?module=osr&cmd=recommendation" role="button">' .
      'Complete New Recommendation</a>';
    $arr['RECOMMENDATIONLINK'] = $recommendationLink;

    $uraOpenDate = '2018-01-01 00:00:00';
    $uraCloseDate = '2018-02-15 00:00:00';
    $uraNotification = '2018-02-28 00:00:00';
    $uraLink = '<h2>Undergraduate Research Assistantship Application</h2><ul><li>Open Date: ' . $uraOpenDate .
    '</li><li>Close Date: ' . $uraCloseDate . '</li><li>Award Notification Date: ' .
    $uraNotification . '</li></ul>';
    if ($today >= $uraOpenDate and $today <= $uraCloseDate){
      $uraLink .= '<a class="btn btn-primary" href="index.php?module=osr&cmd=uraform" role="button">' .
      'Apply</a>';
    }
    $arr['URALINK'] = $uraLink;

    return \PHPWS_Template::process($arr, 'osr', 'facultymenu.tpl');
  }

  public function buildRecommendation(){
    $recommendationInfo = new RecommendationFactory;
    /* Check to see if connected to an existing application so info can be retrieved
      to preload some of recommendation form */
    $deptOptions = $recommendationInfo->GetDepartments();
    $submitLink = PHPWS_SOURCE_HTTP . 'index.php?module=osr&cmd=recommendationpost';
    $arr = array('SUBMITLINK'=>$submitLink,
                'DEPARTMENTS'=>implode('', $deptOptions));
    return \PHPWS_Template::process($arr, 'osr', 'recommendation.tpl');
  }

  public function buildURAForm(){
    /* how should I switch semesters/years */
    $uraInfo = new URAGrantFactory;
    $majorOptions = $uraInfo->GetMajors();
    $deptOptions = $uraInfo->GetDepartments();
    $submitLink = PHPWS_SOURCE_HTTP . 'index.php?module=osr&cmd=urapost';
    $arr = array('SUBMITLINK'=>$submitLink,
                'MAJORS'=>implode('', $majorOptions),
                'DEPARTMENTS'=>implode('', $deptOptions));
    return \PHPWS_Template::process($arr, 'osr', 'uraform.tpl');
  }
}
 ?>
