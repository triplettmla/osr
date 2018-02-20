<?php
namespace osr\Resource;
use osr\Resource\Base;
use \phpws2\Variable;

class ResearchGrantApplication extends Base{
  //Student Applicant
  protected $id; // research grant application id (is this a codeword??)
  protected $StudentID;
  protected $FirstName;
  protected $LastName;
  protected $Email;
  protected $Phone;
  //protected $ASUBox;
  protected $Status;
  protected $Major;
  protected $Honors;
  protected $GPA;
  protected $BannerID;

  //Faculty Advisor Info
  protected $FAFirstName;
  protected $FALastName;
  protected $FACollege;
  protected $FADept;
  protected $FAEmail;

  //Research Grant details
  protected $Amount;
  protected $AmountLess;
  protected $BudgetJustification;
  protected $ResearchTitle;
  protected $ResearchDescription;
  protected $IRBApproved;
  protected $IRBProtocol;
  protected $IACUCApproved;
  protected $IACUCProtocol;
  protected $IBCApproved;
  protected $IBCProtocol;
  protected $ApplicationDate;
  protected $priorFunding;
  protected $Abroad;
  protected $Visible;

  //Research grant award or reject
  protected $Awarded;
  protected $AwardAmount;
  protected $AwardDate;

  //Final Report
  protected $Presented;
  protected $MeetingDate;
  protected $MeetingLocation;
  protected $FinalReport;
  protected $FinalReportDate;

  protected $table = 'osr_research_apps';

  public function __construct()
  {
      parent::__construct();
      $this->id = new Variable\IntegerVar(0, 'ID');
      $this->StudentID = new Variable\StringVar(null, 'StudentID');
      $this->FirstName = new Variable\StringVar(null, 'FirstName');
      $this->LastName = new Variable\StringVar(null, 'LastName');
      $this->Email = new Variable\Email(null, 'Email');
      $this->Phone = new Variable\PhoneNumber(null, 'Phone');
      $this->Phone->allowEmpty(false);
      $this->Status = new Variable\StringVar(null, 'Status');
      $this->Major = new Variable\StringVar(null, 'Major');
      $this->Honors = new Variable\BooleanVar(false, 'Honors');
      $this->BannerID = new Variable\NumberString(null, 'BannerID');
      $this->GPA = new Variable\DecimalVar(1.0, 'GPA');

      $this->FAFirstName = new Variable\StringVar(null, 'FAFirstName');
      $this->FALastName = new Variable\StringVar(null, 'FALastName');
      $this->FAEmail = new Variable\Email(null, 'FAEmail');
      $this->FACollege = new Variable\StringVar(null, 'FACollege');
      $this->FADept = new Variable\StringVar(null, 'FADept');

      $this->Amount = new Variable\IntegerVar(0, 'Amount');
      $this->AmountLess = new Variable\BooleanVar(false, 'AmountLess');
      $this->BudgetJustification = new Variable\StringVar(null, 'BudgetJustification');
      $this->ResearchTitle = new Variable\StringVar(null, 'ResearchTitle');
      $this->ResearchDescription = new Variable\StringVar(null, 'ResearchDescription');
      $this->IRBApproved = new Variable\BooleanVar(false, 'IRBApproved');
      $this->IACUCApproved = new Variable\BooleanVar(false, 'IACUCApproved');
      $this->IBCApproved = new Variable\BooleanVar(false, 'IBCApproved');
      $this->IRBProtocol = new Variable\StringVar(null, 'IRBProtocol');
      $this->IACUCProtocol = new Variable\StringVar(null, 'IACUCProtocol');
      $this->IBCProtocol = new Variable\StringVar(null, 'IBCProtocol');
      $this->priorFunding = new Variable\BooleanVar(false, 'priorFunding');
      $this->Abroad = new Variable\BooleanVar(false, 'Abroad');
      $this->Visible = new Variable\BooleanVar(false, 'Visible');
      $this->ApplicationDate = new Variable\StringVar(null, 'ApplicationDate');

      $this->Awarded = new Variable\StringVar(null, 'Awarded');
      $this->AwardAmount = new Variable\IntegerVar(0, 'AwardAmount');
      $this->AwardDate = new Variable\StringVar(null, 'AwardDate');
      $this->AwardDate->allowNull(true);

      /*$this->Presented = new Variable\BooleanVar(null, 'Presented');
      $this->MeetingDate = new Variable\StringVar(null, 'MeetingDate');
      $this->MeetingLocation = new Variable\StringVar(null, 'MeetingLocation');
      $this->FinalReport = new Variable\StringVar(null, 'FinalReport');
      $this->FinalReportDate = new Variable\StringVar(null, 'FinalReportDate');*/

  }

}

?>
