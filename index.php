<?php

if (!defined('PHPWS_SOURCE_DIR')) {
    include '../../core/conf/404.html';
    exit();
}


/*
  if user is not logged in
    force log in
*/

if (\Current_User::isLogged()) {
  /*
  if user is an OSR admin (check user table)
    go to OSRAdmin controller
  elseif user is a faculty
    go to faculty controller
  else
    go to student controller
  */
  $isOSRAdmin = true;
  //if (\Current_User::allow('osr')) {
  if ($isOSRAdmin){
    $role = 'osradmin';
  } else {
    //check ldap? or some indicator of status
    $isFaculty = false;
    if ($isFaculty) {
      $role = 'faculty';
    } else {
      $role = 'student';
    }
  }

  switch ($role) {
    case 'osradmin':
    $controller = new \osr\Controller\OSRAdminController;
    break;
    case 'student':
    $controller = new \osr\Controller\StudentController;
    break;
    case 'faculty':
    $controller = new \osr\Controller\FacultyController;
    break;
  }
  \Layout::add($controller->get());

} else {  // Force log in
  \Current_User::requireLogin();
}


 //\Layout::add('Hello world, Mitzi');
