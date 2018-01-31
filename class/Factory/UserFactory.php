<?php
namespace osr\Factory;
class UserFactory{
    public function GetUserData($userName){
      if (isset($userName)){
        //This will be swapped with a call to banner
        $userInfo['StudentID'] = $userName;
        switch ($userName) {
          case 'triplettml':
            $userInfo['FirstName'] = 'Mitzi';
            $userInfo['LastName'] = 'Triplett';
            $userInfo['BannerID'] = '123456';
            $userInfo['Email'] = 'triplettml@appstate.edu';
            $userInfo['GPA'] = '3.9';
            return $userInfo;
          break;
          case 'weavermk':
            $userInfo['FirstName'] = 'Kathy';
            $userInfo['LastName'] = 'Weaver';
            $userInfo['BannerID'] = '123456';
            $userInfo['Email'] = 'triplettml@appstate.edu';
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
