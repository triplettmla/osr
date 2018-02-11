<h1>OSR Research Grant Application</h1>
<!-- BEGIN ERRORONPAGE-->
<div class="label label-danger">{ERRORONPAGE}</div>
<!-- END ERRORONPAGE -->
<form name="ResearchApply" id="form" action="index.php?module=osr&cmd=researcheditpost" method="post">
  <div class="panel panel-default">
  	<div class="panel-heading">About You</div>
  		<div class="panel-body">
        <label for="FirstName">First Name: </label>
        <div class="input-group">
          <input type="text" readonly class="form-control-plaintext" id="FirstName" value="{FirstName}">
        </div>
        <label for="LastName">Last Name: </label>
        <div class="input-group">
          <input type="text" readonly class="form-control-plaintext" id="LastName" value="{LastName}">
        </div>
        <label for="Email">Email: </label>
        <div class="input-group">
          <input type="text" readonly class="form-control-plaintext" id="Email" value="{Email}">
        </div>
        <!---<label for="FirstName">First Name:</label>
        <div class="input-group">
          <input type="text" class="form-control" id="FirstName" name="FirstName" value="" required size="30" maxlength="100" >
        </div>
        <label for="LastName">Last Name:</label>
        <div class="input-group">
          <input type="text" class="form-control" id="LastName" name="LastName" value="" required size="30" maxlength="100" >
        </div>
        <label for="StudentID">AppalNet Username:</label><br />
        <div class="input-group">
          <input type="text" class="form-control" id="StudentID" name="StudentID" value="" required size="30" maxlength="100">
          <p class="help-block">AppalNet username only - do NOT enter your complete email address</p>
        </div>
        <label for="BannerID">Banner ID:</label>
        <div class="input-group">
          <input type="text" class="form-control" id="BannerID" name="BannerID" value="" required size="30" maxlength="100">
        </div>
        <label for="Email">Email:</label>
        <div class="input-group">
          <input type="email" class="form-control" id="Email" name="Email" value="" required size="30" maxlength="100">
        </div>--->
        <label for="Phone">Phone:</label>
        <div class="input-group">
          <input class="form-control"
            name="Phone" type="Text"
            value="{Phone}"
            size="12"
            maxlength="12"
            required="Yes">
            <!-- BEGIN Phone_error -->
            <div class="label label-danger">{Phone_error}</div>
            <!-- END Phone_error -->
        </div>

        <label for="Status">Status:</label>
        <div class="input-group">
        <select name="Status" required="yes" class="form-control">
            <option value="">Select One</option>
            {STATUSLIST}
        </select>
        <!-- BEGIN Status_error -->
        <div class="label label-danger">{Status_error}</div>
        <!-- END Status_error -->
        </div>
        <label for="Majors">Majors: </label>
        <div class="input-group">
            <select name="Major" class="form-control">
              <option value="">Select One</option>
              {MAJORS}
            </select>
            <!-- BEGIN Major_error -->
            <div class="label label-danger">{Major_error}</div>
            <!-- END Major_error -->
        </div><br />
        <label for="Honors">Are you a member of the Honors College?</label>
        <div class="input-group">
    	      {HONORSRADIO}
        <!-- BEGIN Honors_error -->
        <div class="label label-danger">{Honors_error}</div>
        <!-- END Honors_error -->
        </div><br />

      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">About Your Faculty Mentor</div>
  			<div class="panel-body">
       			<label for="FAFirstName">First Name:</label>
            <div class="input-group">
              <input type="text" class="form-control" id="FAFirstName" name="FAFirstName" value="{FAFirstName}" size="30" maxlength="100" >
              <!-- BEGIN FAFirstName_error -->
              <div class="label label-danger">{FAFirstName_error}</div>
              <!-- END FAFirstName_error -->
            </div>
            <label for="FALastName">Last Name:</label>
            <div class="input-group">
              <input type="text" class="form-control" id="FALastName" name="FALastName" value="{FALastName}" required size="30" maxlength="100" >
              <!-- BEGIN FALastName_error -->
              <div class="label label-danger">{FALastName_error}</div>
              <!-- END FALastName_error -->
            </div>
            <label for="FAEmail">Email:</label>
            <div class="input-group">
              <input type="email" class="form-control" id="FAEmail" name="FAEmail" value="{FAEmail}" required size="30" maxlength="100">
              <!-- BEGIN FAEmail_error -->
              <div class="label label-danger">{FAEmail_error}</div>
              <!-- END FAEmail_error -->
            </div>
            <label for="FACollege">College:</label>
            <div class="input-group">
            <select name="FACollege" class="form-control">
              <option value="Select One">
                    Select One</option>
                    {FACOLLEGELIST}
            </select>
            <!-- BEGIN FACollege_error -->
            <div class="label label-danger">{FACollege_error}</div>
            <!-- END FACollege_error -->
      			</div>
            <label for="FADepartment">Department/Program:</label>
            <div class="input-group">
            <select name="FADept" class="form-control">
              <option value="">Select One</option>
              {DEPARTMENTS}
          	</select>
            <!-- BEGIN FADepartment_error -->
            <div class="label label-danger">{FADepartment_error}</div>
            <!-- END FADepartment_error -->
            </div>
        </div>
	   </div>
	   <div class="panel panel-default">
       <div class="panel-heading">About Your Research</div>
  			<div class="panel-body">
            <label for="Amount">Amount Requested (up to $500):</label>
            <div class="input-group col-md-2">
            <span class="input-group-addon">$</span>
            	<input type="number"
                class="form-control"
                name="Amount"
                value="{Amount}"
                size="10"
                maxlength="4"
                min="1"
                max="500"
                required="yes"
                id="Amount">
            <span class="input-group-addon">.00</span>
            <!-- BEGIN Amount_error -->
            <div class="label label-danger">{Amount_error}</div>
            <!-- END Amount_error -->
            </div><br />
            <label for="priorFunding">Have you received prior funding?</label>
            <div class="input-group">
                {PRIORFUNDINGRADIO}
                <!-- BEGIN PriorFunding_error -->
                <div class="label label-danger">{PriorFunding_error}</div>
                <!-- END PriorFunding_error -->
            </div><br />
            <label for="AmountLess">Would you be willing to accept less than the amount requested?</label>
            <div class="input-group">
		            {AMOUNTLESSRADIO}
                <!-- BEGIN AmountLess_error -->
                <div class="label label-danger">{AmountLess_error}</div>
                <!-- END AmountLess_error -->
            </div><br />
            <label for="BudgetJustification">Budget Justification</label>
            <p><em>Please provide an itemized list of materials needed for the project. Include item description, catalog number, cost and vendor. (Max 1500 characters including spaces)</em></p>
            <div class="input-group col-md-10">
          	<textarea required
		  		      name="BudgetJustification"
				        id="BudgetJustification"
				        cols="60"
				        rows="10"
                maxlength="1700"
                class="form-control">{BudgetJustification}</textarea>
                <!-- BEGIN BudgetJustification_error -->
                <div class="label label-danger">{BudgetJustification_error}</div>
                <!-- END BudgetJustification_error -->
             </div><br />
             <label for="ResearchTitle">Project Title: </label>
             <p><em>(max 1000 characters including spaces)</em></p>
             <div class="input-group col-md-10">
             <textarea required
              name="ResearchTitle"
              id="ResearchTitle"
              cols="60"
              rows="3"
              maxlength="1200"
              class="form-control">{ResearchTitle}</textarea>
              <!-- BEGIN ResearchTitle_error -->
              <div class="label label-danger">{ResearchTitle_error}</div>
              <!-- END ResearchTitle_error -->
              </div><br />
              <label for="ResearchDescription">Project Description:</label>
              <p><em>What are the goals, objectives and specific aims of the project? Please review the design and methodology that will be employed. Justify how and why your proposed budget is needed to complete this project. If you are traveling to conduct research or collect data, please include your departure date and return date. (Max 3000 characters including spaces)</em></p>
        	    <div class="input-group col-md-10">
              <textarea required
              name="ResearchDescription"
              id="ResearchDescription"
              cols="60"
              rows="8"
              maxlength="3200"
              class="form-control">{ResearchDescription}</textarea>
              <!-- BEGIN ResearchDescription_error -->
              <div class="label label-danger">{ResearchDescription_error}</div>
              <!-- END ResearchDescription_error -->
              </div><br />
              <div class='row'><hr></div>
              <p><strong>Compliance Questions: Please contact the Office of Research Protections if you have questions about the required Compliance Questions at <a ref="mailto:compliance@appstate.edu">compliance@appstate.edu</a> or 828-262-2692. The Office of Student Research cannot answer questions about this information. If compliance approval is not applicable to your research, please click no for each response.</strong></p>
              <label for="IRBApproved">If human research, is the project IRB approved?</label>
              <div class="input-group">
                {IRBAPPROVEDRADIO}
                <!-- BEGIN IRBApproved_error -->
                <div class="label label-danger">{IRBApproved_error}</div>
                <!-- END IRBApproved_error -->
              </div>
              <label for="IRBProtocol">If yes, what is the IRB protocol number:</label>
              <div class="input-group">
                <input type="text"
                name="IRBProtocol"
                value="{IRBProtocol}"
                size="10"
                maxlength="7"
                class="form-control"><p class="help-block">XX-XXXX</p>
                <!-- BEGIN IRBProtocol_error -->
                <div class="label label-danger">{IRBProtocol_error}</div>
                <!-- END IRBProtocol_error -->
              </div> <br />
              <label for="IACUCApproved">If vertebrate research, is the project IACUC approved?</label>
              <div class="input-group">
                {IACUCAPPROVEDRADIO}
                <!-- BEGIN IACUCApproved_error -->
                <div class="label label-danger">{IACUCApproved_error}</div>
                <!-- END IACUCApproved_error -->
              </div>
              <label for="IACUCProtocol">If yes, what is the IACUC protocol number:</label>
                <div class="input-group">
                  <input type="text" name="IACUCProtocol" value="{IACUCProtocol}" size="10" maxlength="5"
                      class="form-control"><p class="help-block">XX-XX</p>
                      <!-- BEGIN IACUCProtocol_error -->
                      <div class="label label-danger">{IACUCProtocol_error}</div>
                      <!-- END IACUCProtocol_error -->
              </div> <br />
              <label for="IBCApproved">If recombinant DNA research, is the project IBC approved?</label>
              <div class="input-group">
                {IBCAPPROVEDRADIO}
                <!-- BEGIN IBCApproved_error -->
                <div class="label label-danger">{IBCApproved_error}</div>
                <!-- END IBCApproved_error -->
      			  </div>
              <label for="IBCProtocol">If yes, what is the IBC protocol number:</label>
              <div class="input-group"><input type="text" name="IBCProtocol" value="{IBCProtocol}" size="10" maxlength="5" class="form-control">
                <p class="help-block">XX-XX</p>
                <!-- BEGIN IBCProtocol_error -->
                <div class="label label-danger">{IBCProtocol_error}</div>
                <!-- END IBCProtocol_error -->
              </div>
              <div class='row'><hr></div>
              <label for="Abroad">Does your research project require travel outside of the United States?</label>
              <div class="input-group">
                {ABROADRADIO}
                <!-- BEGIN Abroad_error -->
                <div class="label label-danger">{Abroad_error}</div>
                <!-- END Abroad_error -->
              </div><br />
          		<label for="Visible">If funded do you give the OSR permission to post your "Project Description" on the OSR website under the "Current Projects" link?</label>
              <div class="input-group">
                {VISIBLERADIO}
                <!-- BEGIN Visible_error -->
                <div class="label label-danger">{Visible_error}</div>
                <!-- END Visible_error -->
              </div>
        </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">Make the Award</div>
       <div class="panel-body">
           <label for="Awarded">Award:</label>
           <div class="input-group">
             <input type="radio" name="Awarded" value="Yes" />Yes
             <input type="radio" name="Awarded" value="No" />No
             <input type="radio" name="Awarded" value="Withdrawn" />Withdrawn
           </div><br />
           <label for="AwardAmount">Amount Awarded:</label>
           <div class="input-group col-md-2">
           <span class="input-group-addon">$</span>
             <input type="number"
               class="form-control"
               name="AwardAmount"
               value="{AwardAmount}"
               size="10"
               maxlength="4"
               min="1"
               max="500"
               required="yes"
               id="AwardAmount">
           <span class="input-group-addon">.00</span>
           <!-- BEGIN AwardAmount_error -->
           <div class="label label-danger">{AwardAmount_error}</div>
           <!-- END AwardAmount_error -->
           </div><br />
         </div>
      </div>

    <input type="submit" name="Submit" value="Submit" validate="submitonce" class="btn btn-default">

</form>
