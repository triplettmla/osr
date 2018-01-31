<? php
namespace osr\Resource;
use osr\Resource\Base;

class ResearchGrantApplication extends Base{
  //Student Applicant
  protected $ID; // research grant application id (is this a codeword??)
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
  protected $BudjectJustification;
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

  public function __construct()
    {
        $this->ID = new \phpws2\Variable\IntegerVar(0, 'ID');
        $this->StudentID = new \phpws2\Variable\StringVar(null, 'StudentID');
        $this->FirstName = new \phpws2\Variable\StringVar(null, 'FirstName');
        $this->LastName = new \phpws2\Variable\StringVar(null, 'LastName');
        $this->Email = new \phpws2\Variable\Email(null, 'Email');
        //$this->Phone = new Variable\PhoneNumber(null, 'Phone');
        $this->Status = new \phpws2\Variable\StringVar(null, 'Status');
        $this->Major = new \phpws2\Variable\StringVar(null, 'Major');
        $this->Honors = new \phpws2\Variable\BooleanVar(null, 'Honors');
        $this->BannerID = new \phpws2\Variable\NumberString(null, 'BannerID');
        $this->GPA = new \phpws2\Variable\DecimalVar(1.0, 'GPA');

        $this->FAFirstName = new \phpws2\Variable\StringVar(null, 'FAFirstName');
        $this->FALastName = new \phpws2\Variable\StringVar(null, 'FALastName');
        $this->FAEmail = new \phpws2\Variable\Email(null, 'FAEmail');
        $this->FACollege = new \phpws2\Variable\StringVar(null, 'FACollege');
        $this->FADept = new \phpws2\Variable\StringVar(null, 'FADept');

        $this->Amount = new \phpws2\Variable\IntegerVar(null, 'Amount');
        $this->AmountLess = new \phpws2\Variable\BooleanVar(null, 'AmountLess');
        $this->BudgetJustification = new \phpws2\Variable\StringVar(null, 'BudgetJustification');
        $this->ResearchTitle = new \phpws2\Variable\StringVar(null, 'ResearchTitle');
        $this->ResearchDescription = new \phpws2\Variable\StringVar(null, 'ResearchDescription');
        $this->IRBApproved = new \phpws2\Variable\BooleanVar(null, 'IRBApproved');
        $this->IACUCApproved = new \phpws2\Variable\BooleanVar(null, 'IACUCApproved');
        $this->IBCApproved = new \phpws2\Variable\BooleanVar(null, 'IBCApproved');
        $this->IRBProtocol = new \phpws2\Variable\StringVar(null, 'IRBProtocol');
        $this->IACUCProtocol = new \phpws2\Variable\StringVar(null, 'IACUCProtocol');
        $this->IBCProtocol = new \phpws2\Variable\StringVar(null, 'IBCProtocol');
        $this->priorFunding = new \phpws2\Variable\BooleanVar(null, 'priorFunding');
        $this->Abroad = new \phpws2\Variable\BooleanVar(null, 'Abroad');
        $this->Visible = new \phpws2\Variable\BooleanVar(null, 'Visible');
        $this->ApplicationDate = new \phpws2\Variable\Datetime(null, 'ApplicationDate');
        $this->ApplicationDate->stamp();

        $this->Awarded = new \phpws2\Variable\StringVar(null, 'Awarded');
        $this->AwardAmount = new \phpws2\Variable\StringVar(null, 'AwardAmount');
        $this->AwardDate = new \phpws2\Variable\Datetime(null, 'AwardDate');

        $this->Presented = new \phpws2\Variable\BooleanVar(null, 'Presented');
        $this->MeetingDate = new \phpws2\Variable\DateTime(null, 'MeetingDate');
        $this->MeetingLocation = \phpws2\new Variable\StringVar(null, 'MeetingLocation');
        $this->FinalReport = new \phpws2\Variable\StringVar(null, 'FinalReport');
        $this->FinalReportDate = new \phpws2\Variable\Datetime(null, 'FinalReportDate');
        /*$this->resource_id = new Variable\IntegerVar(null, 'resource_id');
        $this->action = new Variable\StringVar(null, 'action');
        $this->datestamp = new Variable\Datetime(null, 'datestamp');
        $this->user_id = new Variable\IntegerVar(null, 'user_id');
        $this->ip_address = new Variable\Ip(null, 'ip_address');
        $this->datestamp->stamp();*/
        parent::__construct();
    }



}

 ?>
