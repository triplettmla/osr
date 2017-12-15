<? php
class UndergraduateResearchAssistantship{
  //Student Applicant
  public $ID; // research grant application id (is this a codeword??)
  public $StudentID;
  public $FirstName;
  public $LastName;
  public $Email;
  public $Phone;
  public $ASUBox;
  public $Status;
  public $Major;
  public $StudentGPA;
  public $BannerID;

  //Faculty Advisor Info
  public $FAFirstName;
  public $FALastName;
  public $FACollege;
  public $FADept;
  public $FAEmail;
  public $LoginID;

  //Research Grant details
  public $Amount;
  public $Fall;
  public $Spring;
  public $Summer;
  public $projectGoals;
  public $ResearchTitle;
  public $MentorRole;
  public $StudentRole;
  public $Outcome;
  public $Recommendation;
  public $IRBApproved;
  public $IRBProtocol;
  public $IACUCApproved;
  public $IACUCProtocol;
  public $IBCApproved;
  public $IBCProtocol;
  public $ApplicationDate;
  public $Abroad;

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
