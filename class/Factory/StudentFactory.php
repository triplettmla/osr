<?php
namespace osr\Factory;

class StudentFactory{
  public function RetrieveMenu(){
    $db = \phpws2\Database::getDB();
    $tbl = $db->addTable('osr_timeline');
    $results = $db->select();

    $arr = array();
    $today = date("Y-m-d H:i:s");
    /* Grab start date, end date, and notify date from database for each grant
    and determine whether to turn on each grant link */
    foreach ($results as $k => $v) {
      $openDate = date("F j, Y, g:i a", strtotime($results[$k]['OpenDate']));
      $closeDate = date("F j, Y, g:i a", strtotime($results[$k]['CloseDate']));
      $notificationDate = date("F j, Y, g:i a", strtotime($results[$k]['NotificationDate']));
      switch ($results[$k]['GrantName']) {
        case 'Research':
          $researchLink = '<h2>OSR Research Grant Application</h2><ul><li>Open Date: ' . $openDate .
          '</li><li>Close Date: ' . $closeDate . '</li><li>Award Notification Date: ' .
          $notificationDate . '</li></ul>';
          if ($today >= $results[$k]['OpenDate'] and $today <= $results[$k]['CloseDate']){
            $researchLink .= '<a class="btn btn-primary" href="index.php?module=osr&cmd=researchform" role="button">' .
            'Apply</a>';
          }
          $arr['RESEARCHLINK'] = $researchLink;
          break;
        case 'Travel':
          $travelLink = '<h2>OSR Travel Grant Application</h2><ul><li>Open Date: ' . $openDate .
          '</li><li>Close Date: ' . $closeDate . '</li><li>Award Notification Date: ' .
          $notificationDate . '</li></ul>';
          if ($today >= $results[$k]['OpenDate'] and $today <= $results[$k]['CloseDate']){
            $travelLink .= '<a class="btn btn-primary" href="index.php?module=osr&cmd=travelform" role="button">' .
            'Apply</a>';
          }
          $arr['TRAVELLINK'] = $travelLink;
          break;
        case 'International':
          $internationalLink = '<h2>International Research Grant Application</h2><ul><li>Open Date: ' . $openDate .
          '</li><li>Close Date: ' . $closeDate . '</li><li>Award Notification Date: ' .
          $notificationDate . '</li></ul>';
          if ($today >= $results[$k]['OpenDate'] and $today <= $results[$k]['CloseDate']){
            $internationalLink .= '<a class="btn btn-primary" href="index.php?module=osr&cmd=internationalform" role="button">' .
            'Apply</a>';
          }
          $arr['INTERNATIONALLINK'] = $internationalLink;
          break;
        case 'Graduate':
        /* Only show this link if the student is a graduate student - how do I
        determine this? */
          $graduateLink = '<h2>Cratis D. Williams Graduate Research Grant Application</h2><ul><li>Open Date: ' . $openDate .
          '</li><li>Close Date: ' . $closeDate . '</li><li>Award Notification Date: ' .
          $notificationDate . '</li></ul>';
          if ($today >= $results[$k]['OpenDate'] and $today <= $results[$k]['CloseDate']){
            $graduateLink .= '<a class="btn btn-primary" href="index.php?module=osr&cmd=graduateform" role="button">' .
            'Apply</a>';
          }
          $arr['GRADUATELINK'] = $graduateLink;
          break;

      }
    }
    return $arr;
  }
}
 ?>
