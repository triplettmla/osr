<? php
class ResearchGrantApplication{
  //Student Applicant
  public $ID; // research grant application id (is this a codeword??)
  public $StudentID;
  public $FirstName;
  public $LastName;
  public $Email;
  public $Phone;
  public $ASUBox;
  public $graduateProgram;
  public $BannerID;

  //Faculty Advisor Info
  public $FAFirstName;
  public $FALastName;
  public $FACollege;
  public $FADept;
  public $FAEmail;

  //Research Grant details
  public $Amount;
  public $AmountLess;
  public $BudjectJustification;
  public $ResearchTitle;
  public $ResearchDescription;
  public $projectType;
  public $courseNumber;
  public $thesisApporvedDate;
  public $prospectusDate;
  public $TotalCost;
  public $otherfundingSources;
  public $Results;
  public $ApplyingFor;
  public $IRBApproved;
  public $IRBProtocol;
  public $IACUCApproved;
  public $IACUCProtocol;
  public $IBCApproved;
  public $IBCProtocol;
  public $ApplicationDate;
  public $priorFunding;
  public $Abroad;
  public $Visible;

  //Research grant award or reject
  public $Awarded;
  public $AwardAmount;
  public $AwardDate;

  //Final Report
  public $Presented;
  public $MeetingDate;
  public $CompletedDate;
  public $MeetingLocation;
  public $FinalReport;
  public $FinalReportDate;

}

 ?>
