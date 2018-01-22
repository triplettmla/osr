<?php
class UserFactory{
    public function getUserData($userName){
      if (isset($userName)){
        //This will be swapped with a call to banner
        switch ($userName) {
          case 'triplettml':
            $userInfo['FIRSTNAME'] = 'Mitzi';
            $userInfo['LASTNAME'] = 'Triplett';
            $userInfo['BANNERID'] = '123456';
            $userInfo['EMAIL'] = 'triplettml@appstate.edu';
            $userInfo['GPA'] = '3.9';
            return $userInfo;
          break;
          case 'weavermk':
            $userInfo['FIRSTNAME'] = 'Kathy';
            $userInfo['LASTNAME'] = 'Weaver';
            $userInfo['BANNERID'] = '123456';
            $userInfo['EMAIL'] = 'triplettml@appstate.edu';
            $userInfo['GPA'] = '3.9';
            return $userInfo;
          break;

        }
      }else{
        return false;
      }
    }

}
 ?>
