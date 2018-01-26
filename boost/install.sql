BEGIN;
-- DROP TABLE IF EXISTS `abstracts`;
CREATE TABLE `Mentor_apps` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StudentFirstName` varchar(255) DEFAULT NULL,
  `StudentLastName` varchar(255) DEFAULT NULL,
  `ApplicationDate` datetime DEFAULT NULL,
  `BannerID` varchar(50) DEFAULT NULL,
  `StudentEmail` varchar(255) DEFAULT NULL,
  `ASUBox` varchar(255) DEFAULT NULL,
  `StudentStatus` varchar(255) DEFAULT NULL,
  `StudentMajor` varchar(255) DEFAULT NULL,
  `Semester` varchar(30) DEFAULT NULL,
  `RecentYear` varchar(30) DEFAULT NULL,
  `FacultyFirstName` varchar(255) DEFAULT NULL,
  `FacultyLastName` varchar(255) DEFAULT NULL,
  `FacultyEmail` varchar(255) DEFAULT NULL,
  `FacultyDepartment` varchar(255) DEFAULT NULL,
  `Qualities` text,
  `MentorAffect` text,
  `OtherInfo` text,
  `FacultyCollege` varchar(255) DEFAULT NULL,
  `ChairFirstName` varchar(255) DEFAULT NULL,
  `ChairLastName` varchar(255) DEFAULT NULL,
  `ChairEmail` varchar(255) DEFAULT NULL,
  `MentorYears` text,
  `Philosophy` text,
  `Presentations` text,
  `Publications` text,
  `SupportLetter` text,
  `FacultyResponseDate` datetime DEFAULT NULL,
  `ChairResponseDate` datetime DEFAULT NULL,
  `StudentPhone` varchar(30) DEFAULT NULL,
  `Awarded` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ID`)
)

CREATE TABLE `abstracts` (
  `StudentID` varchar(30) NOT NULL DEFAULT '',
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Status` varchar(25) DEFAULT NULL,
  `Major` varchar(50) DEFAULT NULL,
  `FAFirstName` varchar(50) DEFAULT NULL,
  `FALastName` varchar(50) DEFAULT NULL,
  `FACollege` varchar(50) DEFAULT NULL,
  `FADept` varchar(50) DEFAULT NULL,
  `FAEmail` varchar(50) DEFAULT NULL,
  `Title` text,
  `abstract` text CHARACTER SET utf8,
  `Coauthors` text,
  `PresentationType` varchar(25) DEFAULT NULL,
  `TimePreference` varchar(10) DEFAULT NULL,
  `Equipment` varchar(50) DEFAULT NULL,
  `Requirements` text,
  `Newspaper` char(3) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Accepted` varchar(10) DEFAULT NULL,
  `AcceptedDate` datetime DEFAULT NULL,
  `ApplicationDate` datetime DEFAULT NULL,
  `AbstractID` int(11) NOT NULL AUTO_INCREMENT,
  `Competition` varchar(100) DEFAULT NULL,
  `IRBApproved` varchar(255) DEFAULT NULL,
  `IRBDate` varchar(255) DEFAULT NULL,
  `IRBProtocol` varchar(255) DEFAULT NULL,
  `IACUCApproved` varchar(255) DEFAULT NULL,
  `IACUCProtocol` varchar(255) DEFAULT NULL,
  `IBCApproved` varchar(255) DEFAULT NULL,
  `IBCProtocol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`AbstractID`)
)

CREATE TABLE `community_opportunity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `timeline` varchar(200) DEFAULT NULL,
  `funding` varchar(200) DEFAULT NULL,
  `contact1firstname` varchar(50) DEFAULT NULL,
  `contact1lastname` varchar(50) DEFAULT NULL,
  `contact1phone` varchar(12) DEFAULT NULL,
  `contact1email` varchar(50) DEFAULT NULL,
  `contact2firstname` varchar(50) DEFAULT NULL,
  `contact2lastname` varchar(50) DEFAULT NULL,
  `contact2phone` varchar(12) DEFAULT NULL,
  `contact2email` varchar(50) DEFAULT NULL,
  `contact1title` varchar(50) DEFAULT NULL,
  `contact2title` varchar(50) DEFAULT NULL,
  `organizationemail` varchar(50) DEFAULT NULL,
  `visible` varchar(25) DEFAULT NULL,
  `originationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
)

CREATE TABLE `gsasresearch_apps` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StudentID` varchar(30) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `ASUBox` varchar(255) DEFAULT NULL,
  `Major` varchar(255) DEFAULT NULL,
  `AcademicDept` varchar(255) DEFAULT NULL,
  `Sport` varchar(255) DEFAULT NULL,
  `FAFirstName` varchar(255) DEFAULT NULL,
  `FALastName` varchar(255) DEFAULT NULL,
  `FACollege` varchar(255) DEFAULT NULL,
  `FADept` varchar(255) DEFAULT NULL,
  `FAEmail` varchar(255) DEFAULT NULL,
  `SenatorFirstName` varchar(255) DEFAULT NULL,
  `SenatorLastName` varchar(255) DEFAULT NULL,
  `SenatorEmail` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `AmountLess` varchar(255) DEFAULT NULL,
  `BudgetJustification` text,
  `ResearchTitle` text,
  `ProjectType` varchar(50) DEFAULT NULL,
  `ResearchDescription` text,
  `IRBApproved` varchar(255) DEFAULT NULL,
  `IRBDate` varchar(255) DEFAULT NULL,
  `IACUCApproved` varchar(255) DEFAULT NULL,
  `IACUCDate` varchar(255) DEFAULT NULL,
  `Awarded` varchar(255) DEFAULT NULL,
  `AwardAmount` varchar(255) DEFAULT NULL,
  `AwardDate` date DEFAULT NULL,
  `CompletedDate` varchar(255) DEFAULT NULL,
  `Presented` varchar(255) DEFAULT NULL,
  `MeetingDate` varchar(255) DEFAULT NULL,
  `MeetingLocation` varchar(255) DEFAULT NULL,
  `FinalReport` text,
  `ApplicationDate` date DEFAULT NULL,
  `Abroad` char(3) DEFAULT NULL,
  `FinalReportDate` date DEFAULT NULL,
  `OtherFunding` text,
  `HonorsProgram` char(3) DEFAULT NULL,
  `BannerID` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
)

CREATE TABLE `gsastravel_apps` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StudentID` varchar(30) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `ASUBox` varchar(255) DEFAULT NULL,
  `Major` varchar(255) DEFAULT NULL,
  `AcademicDept` varchar(255) DEFAULT NULL,
  `FAFirstName` varchar(255) DEFAULT NULL,
  `FALastName` varchar(255) DEFAULT NULL,
  `FACollege` varchar(255) DEFAULT NULL,
  `FADept` varchar(255) DEFAULT NULL,
  `FAEmail` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `AmountLess` varchar(255) DEFAULT NULL,
  `BudgetJustification` text,
  `MeetingName` varchar(255) DEFAULT NULL,
  `MeetingLocation` text,
  `Society` varchar(255) DEFAULT NULL,
  `MeetingDate` varchar(255) DEFAULT NULL,
  `PresentationTitle` text,
  `Coauthors` varchar(255) DEFAULT NULL,
  `PresentationType` varchar(255) DEFAULT NULL,
  `ApplicationDate` date DEFAULT NULL,
  `Awarded` varchar(255) DEFAULT NULL,
  `AwardAmount` varchar(255) DEFAULT NULL,
  `AwardDate` date DEFAULT NULL,
  `PresentedDate` varchar(255) DEFAULT NULL,
  `FinalReport` text,
  `FinalReportDate` date DEFAULT NULL,
  `PriorFunding` char(3) DEFAULT NULL,
  `SenatorFirstName` varchar(50) DEFAULT NULL,
  `SenatorLastName` varchar(50) DEFAULT NULL,
  `SenatorEmail` varchar(100) DEFAULT NULL,
  `MeetingState` char(2) DEFAULT NULL,
  `MeetingCity` varchar(255) DEFAULT NULL,
  `ReturnDate` varchar(10) NOT NULL DEFAULT '',
  `DepartureDate` varchar(10) NOT NULL DEFAULT '',
  `Abroad` char(3) DEFAULT NULL,
  `ProjectDescription` text,
  `HonorsProgram` char(3) DEFAULT NULL,
  `Presenting` char(3) DEFAULT NULL,
  `BannerID` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
)

CREATE TABLE `international_apps` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StudentID` varchar(30) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `ASUBox` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Major` varchar(255) DEFAULT NULL,
  `FAFirstName` varchar(255) DEFAULT NULL,
  `FALastName` varchar(255) DEFAULT NULL,
  `FACollege` varchar(255) DEFAULT NULL,
  `FADept` varchar(255) DEFAULT NULL,
  `FAEmail` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `BudgetJustification` text,
  `ResearchTitle` text,
  `ResearchDescription` text,
  `IRBApproved` varchar(255) DEFAULT NULL,
  `IRBDate` varchar(255) DEFAULT NULL,
  `IACUCApproved` varchar(255) DEFAULT NULL,
  `IACUCDate` varchar(255) DEFAULT NULL,
  `ApplicationDate` date DEFAULT NULL,
  `Awarded` varchar(255) DEFAULT NULL,
  `AwardAmount` varchar(255) DEFAULT NULL,
  `AwardDate` date DEFAULT NULL,
  `CompletedDate` varchar(255) DEFAULT NULL,
  `Presented` varchar(255) DEFAULT NULL,
  `MeetingDate` varchar(255) DEFAULT NULL,
  `MeetingLocation` varchar(255) DEFAULT NULL,
  `FinalReport` text,
  `FinalReportDate` date DEFAULT NULL,
  `priorFunding` char(3) DEFAULT NULL,
  `DepartureDate` varchar(20) DEFAULT NULL,
  `ReturnDate` varchar(20) DEFAULT NULL,
  `BannerID` varchar(30) DEFAULT NULL,
  `IBCApproved` varchar(255) DEFAULT NULL,
  `IRBProtocol` varchar(255) DEFAULT NULL,
  `IACUCProtocol` varchar(255) DEFAULT NULL,
  `IBCProtocol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
)

CREATE TABLE `opportunities` (
  `ProjectID` int(11) NOT NULL AUTO_INCREMENT,
  `FAFirstName` varchar(255) DEFAULT NULL,
  `FALastName` varchar(255) DEFAULT NULL,
  `FAEmail` varchar(255) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Major` text,
  `FACollege` varchar(255) DEFAULT NULL,
  `FADept` varchar(255) DEFAULT NULL,
  `ProjectTitle` text,
  `ProjectDescription` text,
  `Type` varchar(255) DEFAULT NULL,
  `Availability` varchar(255) DEFAULT NULL,
  `SiteName` varchar(255) DEFAULT NULL,
  `LastUpdated` date DEFAULT NULL,
  PRIMARY KEY (`ProjectID`)
)

CREATE TABLE `other_presentations` (
  `ProjectID` int(11) NOT NULL AUTO_INCREMENT,
  `MeetingName` varchar(255) DEFAULT NULL,
  `MeetingLocation` varchar(255) DEFAULT NULL,
  `Society` varchar(255) DEFAULT NULL,
  `MeetingDate` varchar(255) DEFAULT NULL,
  `PresentationTitle` varchar(255) DEFAULT NULL,
  `CoPresenters` varchar(255) DEFAULT NULL,
  `StudentPresenter` varchar(255) DEFAULT NULL,
  `FAFirstName` varchar(255) DEFAULT NULL,
  `FALastName` varchar(255) DEFAULT NULL,
  `FAEmail` varchar(255) DEFAULT NULL,
  `SubmittedDate` date DEFAULT NULL,
  PRIMARY KEY (`ProjectID`)
)

CREATE TABLE `other_publications` (
  `ProjectID` int(11) NOT NULL AUTO_INCREMENT,
  `PublicationTitle` varchar(255) DEFAULT NULL,
  `JournalTitle` varchar(255) DEFAULT NULL,
  `JournalPage` varchar(255) DEFAULT NULL,
  `JournalYear` varchar(255) DEFAULT NULL,
  `ProjectTitle` varchar(255) DEFAULT NULL,
  `StudentAuthor` varchar(255) DEFAULT NULL,
  `CoAuthors` varchar(255) DEFAULT NULL,
  `FAFirstName` varchar(255) DEFAULT NULL,
  `FALastName` varchar(255) DEFAULT NULL,
  `FAEmail` varchar(255) DEFAULT NULL,
  `SubmittedDate` date DEFAULT NULL,
  PRIMARY KEY (`ProjectID`)
)

CREATE TABLE `recommendation` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `FAFirstName` varchar(255) DEFAULT NULL,
  `FALastName` varchar(255) DEFAULT NULL,
  `FACollege` varchar(255) DEFAULT NULL,
  `FADept` varchar(255) DEFAULT NULL,
  `FAEmail` varchar(255) DEFAULT NULL,
  `FAPhone` varchar(255) DEFAULT NULL,
  `OSRResearch` char(3) DEFAULT NULL,
  `OSRTravel` char(3) DEFAULT NULL,
  `International` char(3) DEFAULT NULL,
  `PhiKappaPhi` char(3) DEFAULT NULL,
  `Energy` char(3) DEFAULT NULL,
  `Justification` text,
  `RecommendationDate` varchar(45) DEFAULT NULL,
  `Meeting` varchar(30) DEFAULT NULL,
  `PrintedDate` varchar(45) DEFAULT NULL,
  `FAUserID` varchar(255) DEFAULT NULL,
  `GrantType` varchar(255) DEFAULT NULL,
  `Acree` char(3) DEFAULT NULL,
  `FAUsername` varchar(255) DEFAULT NULL,
  `IRBApproved` varchar(255) DEFAULT NULL,
  `IACUCApproved` varchar(255) DEFAULT NULL,
  `IBCApproved` varchar(255) DEFAULT NULL,
  `IRBProtocol` varchar(255) DEFAULT NULL,
  `IACUCProtocol` varchar(255) DEFAULT NULL,
  `IBCProtocol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
)

CREATE TABLE `research_apps` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StudentID` varchar(30) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `ASUBox` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Major` varchar(255) DEFAULT NULL,
  `Athlete` varchar(255) DEFAULT NULL,
  `Sport` varchar(255) DEFAULT NULL,
  `FAFirstName` varchar(255) DEFAULT NULL,
  `FALastName` varchar(255) DEFAULT NULL,
  `FACollege` varchar(255) DEFAULT NULL,
  `FADept` varchar(255) DEFAULT NULL,
  `FAEmail` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `AmountLess` varchar(255) DEFAULT NULL,
  `BudgetJustification` text,
  `ResearchTitle` text,
  `ResearchDescription` text,
  `IRBApproved` varchar(255) DEFAULT NULL,
  `IRBDate` varchar(255) DEFAULT NULL,
  `IACUCApproved` varchar(255) DEFAULT NULL,
  `IACUCDate` varchar(255) DEFAULT NULL,
  `ApplicationDate` date DEFAULT NULL,
  `Awarded` varchar(255) DEFAULT NULL,
  `AwardAmount` varchar(255) DEFAULT NULL,
  `AwardDate` date DEFAULT NULL,
  `CompletedDate` varchar(255) DEFAULT NULL,
  `Presented` varchar(255) DEFAULT NULL,
  `MeetingDate` varchar(255) DEFAULT NULL,
  `MeetingLocation` varchar(255) DEFAULT NULL,
  `FinalReport` text,
  `FinalReportDate` date DEFAULT NULL,
  `priorFunding` char(3) DEFAULT NULL,
  `Honors` char(3) DEFAULT NULL,
  `Abroad` char(3) DEFAULT NULL,
  `GPA` decimal(5,3) DEFAULT NULL,
  `Visible` char(3) DEFAULT NULL,
  `BannerID` varchar(30) DEFAULT NULL,
  `IRBProtocol` varchar(255) DEFAULT NULL,
  `IACUCProtocol` varchar(255) DEFAULT NULL,
  `IBCProtocol` varchar(255) DEFAULT NULL,
  `IBCApproved` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
)

CREATE TABLE `travel_apps` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StudentID` varchar(30) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `ASUBox` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Major` varchar(255) DEFAULT NULL,
  `Athlete` varchar(255) DEFAULT NULL,
  `Sport` varchar(255) DEFAULT NULL,
  `FAFirstName` varchar(255) DEFAULT NULL,
  `FALastName` varchar(255) DEFAULT NULL,
  `FACollege` varchar(255) DEFAULT NULL,
  `FADept` varchar(255) DEFAULT NULL,
  `FAEmail` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `AmountLess` varchar(255) DEFAULT NULL,
  `BudgetJustification` text,
  `MeetingName` varchar(255) DEFAULT NULL,
  `MeetingLocation` text,
  `Society` varchar(255) DEFAULT NULL,
  `MeetingDate` varchar(20) DEFAULT NULL,
  `DepartureDate` varchar(20) DEFAULT NULL,
  `ReturnDate` varchar(20) DEFAULT NULL,
  `PresentationTitle` text,
  `Coauthors` varchar(255) DEFAULT NULL,
  `PresentationType` varchar(255) DEFAULT NULL,
  `ApplicationDate` date DEFAULT NULL,
  `Awarded` varchar(255) DEFAULT NULL,
  `AwardAmount` varchar(255) DEFAULT NULL,
  `AwardDate` date DEFAULT NULL,
  `PresentedDate` varchar(255) DEFAULT NULL,
  `FinalReport` text,
  `FinalReportDate` date DEFAULT NULL,
  `PriorFunding` char(3) DEFAULT NULL,
  `MeetingCity` varchar(255) DEFAULT NULL,
  `MeetingState` char(2) DEFAULT NULL,
  `Abroad` char(3) DEFAULT NULL,
  `Honors` char(3) DEFAULT NULL,
  `GPA` decimal(5,3) DEFAULT NULL,
  `PresentationDescription` text,
  `Visible` char(3) DEFAULT NULL,
  `BannerID` varchar(30) DEFAULT NULL,
  `IRBApproved` varchar(255) DEFAULT NULL,
  `IRBProtocol` varchar(255) DEFAULT NULL,
  `IACUCApproved` varchar(255) DEFAULT NULL,
  `IACUCProtocol` varchar(255) DEFAULT NULL,
  `IBCApproved` varchar(255) DEFAULT NULL,
  `IBCProtocol` varchar(255) DEFAULT NULL,
  `Destination` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
)

CREATE TABLE `ura_apps` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StudentID` varchar(30) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `ASUBox` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Major` varchar(255) DEFAULT NULL,
  `StudentGPA` varchar(5) DEFAULT NULL,
  `FAFirstName` varchar(255) DEFAULT NULL,
  `FALastName` varchar(255) DEFAULT NULL,
  `FACollege` varchar(255) DEFAULT NULL,
  `FADept` varchar(255) DEFAULT NULL,
  `FAEmail` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Fall` varchar(11) DEFAULT NULL,
  `Summer` varchar(11) DEFAULT NULL,
  `Spring` varchar(11) DEFAULT NULL,
  `ProjectGoals` text,
  `ResearchTitle` text,
  `MentorRole` text,
  `StudentRole` text,
  `Outcome` text,
  `IRBApproved` varchar(255) DEFAULT NULL,
  `IRBDate` varchar(255) DEFAULT NULL,
  `IACUCApproved` varchar(255) DEFAULT NULL,
  `IACUCDate` varchar(255) DEFAULT NULL,
  `ApplicationDate` date DEFAULT NULL,
  `Awarded` varchar(255) DEFAULT NULL,
  `AwardAmount` varchar(255) DEFAULT NULL,
  `AwardDate` date DEFAULT NULL,
  `CompletedDate` varchar(255) DEFAULT NULL,
  `Presented` varchar(255) DEFAULT NULL,
  `MeetingDate` varchar(255) DEFAULT NULL,
  `MeetingLocation` varchar(255) DEFAULT NULL,
  `FinalReport` text,
  `FinalReportDate` date DEFAULT NULL,
  `Abroad` char(3) DEFAULT NULL,
  `LoginID` varchar(255) DEFAULT NULL,
  `BannerID` varchar(30) DEFAULT NULL,
  `Recommendation` text,
  `IBCApproved` varchar(255) DEFAULT NULL,
  `IBCProtocol` varchar(255) DEFAULT NULL,
  `IACUCProtocol` varchar(255) DEFAULT NULL,
  `IRBProtocol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
)

COMMIT;
