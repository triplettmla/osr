<?php
namespace osr\Controller;

class OSRAdminController{
  public function get() {
    if (isset($_GET['cmd'])){
      switch ($_GET['cmd']) {
        case 'awards':
          return $this->buildRecommendation();
        break;

      }
    } else {
      return \PHPWS_Template::process(array(), 'osr', 'osradminmenu.tpl');
    }
  }

}
 ?>
