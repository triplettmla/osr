<?php
namespace osr\Resource;
class InternationalApplication{
  public $ID;
  public $StudentID;
  public $FirstName;
  public $LastName;
  public $Email;
  public $Phone;
  public $ASUBox;
  public $Status;
  public $Major;
  public $BannerID;

  //Faculty Advisor Info
  public $FAFirstName;
  public $FALastName;
  public $FACollege;
  public $FADept;
  public $FAEmail;

  //Grant Info
  public $Amount;
  public $BudgetJustification;
  public $ResearchTitle;
  public $ResearchDescription;
  public $IRBApproved;
  public $IRBProtocol;
  public $IACUCApproved;
  public $IACUCProtocol;
  public $IRBApproved;
  public $IRBProtocol;
  public $ApplicationDate;
  public $priorFunding;


  //Awarded/Rejected Info
  public $Awarded;
  public $AwardAmount;
  public $AwardDate;

  //Final Report Info
  public $CompletedDate;
  public $Presented;
  public $MeetingDate;
  public $MeetingLocation;
  public $FinalReport;
  public $FinalReportDate;
  public $DepartureDate;
  public $ReturnDate;
}
 ?>
