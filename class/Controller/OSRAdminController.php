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
        case 'researchedit':
          return $this->BuildOSRResearchEdit();
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
    $arr['PENDINGGRANTS'] = $researchGrants->RetrieveList(false);
    $arr['PENDINGCOUNT'] = count($arr['PENDINGGRANTS']);
    $arr['COMPLETEGRANTS'] = $researchGrants->RetrieveList(true);
    $arr['COMPLETECOUNT'] = count($arr['COMPLETEGRANTS']);
    return \PHPWS_Template::process($arr, 'osr', 'osrresearchlist.tpl');
  }

  public function BuildOSRResearchEdit(){
    $researchGrant = new ResearchGrantFactory;
    $arr = $researchGrant->RetrieveDetail($_GET['id']);
    
    $arr += $researchGrant->BuildForm(TRUE, $arr);
    return \PHPWS_Template::process($arr, 'osr', 'osrresearchedit.tpl');

  }

}
 ?>
