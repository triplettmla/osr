<?php
namespace osr\Controller;
use osr\Factory\ResearchGrantFactory;

class OSRAdminController{
  public function get() {
    if (isset($_GET['cmd'])){
      switch ($_GET['cmd']) {
        case 'awardmenu':
          return \PHPWS_Template::process(array(), 'osr', 'awardmenu.tpl');
        break;
        case 'managedates':
        break;
        case 'abstractmenu':
        break;
        case 'reportingmenu':
        break;
        case 'recommendationlist':
        break;
        case 'osrresearchlist':
          return $this->BuildOSRResearchList();
        break;
        case 'osrtravellist':
        break;
        case 'internationallist';
        break;
        case 'gradlist';
        break;

      }
    } else {
      return \PHPWS_Template::process(array(), 'osr', 'osradminmenu.tpl');
    }
  }
  public function BuildOSRResearchList(){
    $researchGrants = new ResearchGrantFactory;
    $arr['PENDINGGRANTS'] = $researchGrants->RetrievePending();
    $arr['PENDINGCOUNT'] = count($arr['PENDINGGRANTS']);
    //$arr['COMPLETEGRANTS'] = $researchGrants->RetrieveComplete();
    return \PHPWS_Template::process($arr, 'osr', 'osrresearchlist.tpl');
  }

}
 ?>
