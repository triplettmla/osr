<h1>OSR Research Grant Application</h1>
<form name="ResearchApply" id="form" action="index.php?module=osr&cmd=researchpost" method="post">
  <div class="panel panel-default">
  	<div class="panel-heading">About You</div>
  		<div class="panel-body">
        <label for="FirstName">First Name: </label>
        <div class="input-group">
          <input type="text" readonly class="form-control-plaintext" id="FirstName" value="{FIRSTNAME}">
        </div>
        <label for="LastName">Last Name: </label>
        <div class="input-group">
          <input type="text" readonly class="form-control-plaintext" id="LastName" value="{LASTNAME}">
        </div>
        <label for="Email">Email: </label>
        <div class="input-group">
          <input type="text" readonly class="form-control-plaintext" id="Email" value="{EMAIL}">
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
            <option value="Freshman">Freshman</option>
            <option value="Sophomore">Sophomore</option>
            <option value="Junior">Junior</option>
            <option value="Senior">Senior</option>
            <option value="Graduate">Graduate</option>
            <option value="Doctoral">Doctoral Program</option>
          </select>
        </div>
        <label for="Majors">Majors: </label>
        <div class="input-group">
            <select name="Major" class="form-control">
              {MAJORS}
            </select>
        </div><br />
        <label for="Honors">Are you a member of the Honors College?</label>
        <div class="input-group">
    	      <input type="radio" name="Honors" value="no" label="No" id="Honors" required>
        No
            <input type="radio" name="Honors" value="yes" label="Yes" id="Honors" required>
        Yes
        </div><br />
        <!---<label for="GPA">GPA:</label>
        <div class="input-group">
       	<input  type="number"
        title="GPA must be a decimal number"
        class="form-control"
        name="GPA"
        value=""
        step="0.01"
        min="0"
        max="4"
        size="10"
        maxlength="5"
        required="yes"
        id="GPA">
      </div><br />--->


      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">About Your Faculty Mentor</div>
  			<div class="panel-body">
       			<label for="FAFirstName">First Name:</label>
            <div class="input-group">
              <input type="text" class="form-control" id="FAFirstName" name="FAFirstName" value="" size="30" maxlength="100" >
              <!-- BEGIN FAFirstName_error -->
              <div class="label label-danger">{FAFirstName_error}</div>
              <!-- END FAFirstName_error -->
            </div>
            <label for="FALastName">Last Name:</label>
            <div class="input-group">
              <input type="text" class="form-control" id="FALastName" name="FALastName" value="" required size="30" maxlength="100" >
            </div>
            <label for="FAEmail">Email:</label>
            <div class="input-group">
              <input type="email" class="form-control" id="FAEmail" name="FAEmail" value="" required size="30" maxlength="100">
            </div>
            <label for="FACollege">College:</label>
            <div class="input-group">
            <select name="FACollege" class="form-control">
              <option value="Select One">
                    Select One</option>
              <option value="Arts and Sciences">
                  Arts and Sciences</option>
              <option value="Business">
                  Business</option>
              <option value="Education">
                  Education</option>
              <option value="Fine and Applied Arts">
                  Fine and Applied Arts</option>
              <option value="Health Sciences">
                  Health Sciences</option>
              <option value="Honors College">
                  Honors College</option>
              <option value="Other/Business Affairs">
                  Other/Business Affairs</option>
              <option value="School of Music">
                  School of Music</option>
              <option value="University College">
                  University College</option>
            </select>
      			</div>
            <label for="FADepartment">Department/Program:</label>
            <div class="input-group">
            <select name="FADepartment" class="form-control">
              {DEPARTMENTS}
          	</select>
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
                value=""
                size="10"
                maxlength="4"
                min="1"
                max="500"
                required="yes"
                id="Amount">
            <span class="input-group-addon">.00</span>
            </div><br />
            <label for="PriorFunding">Have you received prior funding?</label>
            <div class="input-group">
                <input type="radio" name="PriorFunding" value="no" label="No" id="PriorFunding" required>No
      			    <input type="radio" name="PriorFunding" value="yes" label="Yes" id="PriorFunding" required>Yes
            </div><br />
            <label for="AmountLess">Would you be willing to accept less than the amount requested?</label>
            <div class="input-group">
		            <input type="radio" name="AmountLess" value="no" label="No" id="AmountLess" required>No
  			        <input type="radio" name="AmountLess" value="yes" label="Yes" id="AmountLess" required>Yes
			      </div><br />
            <label for="BudgetJustification">Budget Justification</label>
            <p><em>Please provide an itemized list of materials needed for the project. Include item description, catalog number, cost and vendor. (Max 1500 characters including spaces)</em></p>
            <div class="input-group col-md-10">
          	<textarea required
		  		      name="BudgetJustification"
				        value=""
				        id="BudgetJustification"
				        cols="60"
				        rows="10"
                maxlength="1700"
                class="form-control"></textarea>
             </div><br />
             <label for="ResearchTitle">Project Title: </label>
             <p><em>(max 1000 characters including spaces)</em></p>
             <div class="input-group col-md-10">
             <textarea required
              value=""
              name="ResearchTitle"
              id="ResearchTitle"
              cols="60"
              rows="3"
              maxlength="1200"
              class="form-control"></textarea>
              </div><br />
              <label for="ResearchDescription">Project Description:</label>
              <p><em>What are the goals, objectives and specific aims of the project? Please review the design and methodology that will be employed. Justify how and why your proposed budget is needed to complete this project. If you are traveling to conduct research or collect data, please include your departure date and return date. (Max 3000 characters including spaces)</em></p>
          	   <div class="input-group col-md-10">
               <textarea required
              name="ResearchDescription"
              value=""
              id="ResearchDescription"
              cols="60"
              rows="8"
              maxlength="3200"
              class="form-control"></textarea>
                </div><br />

              <div class='row'><hr></div>
              <p><strong>Compliance Questions: Please contact the Office of Research Protections if you have questions about the required Compliance Questions at <a ref="mailto:compliance@appstate.edu">compliance@appstate.edu</a> or 828-262-2692. The Office of Student Research cannot answer questions about this information. If compliance approval is not applicable to your research, please click no for each response.</strong></p>
              <label for="IRBApproved">If human research, is the project IRB approved?</label>
              <div class="input-group">
                <input type="radio" name="IRBApproved" value="no" label="No" id="IRBApproved" required>No
                <input type="radio" name="IRBApproved" value="yes" label="Yes" id="IRBApproved" required>Yes
			        </div>
              <label for="IRBProtocol">If yes, what is the IRB protocol number:</label>
              <div class="input-group"><input type="text"
                name="IRBProtocol"
                value=""
                size="10"
                maxlength="7"
                class="form-control"><p class="help-block">XX-XXXX</p>
              </div> <br />
              <label for="IACUCApproved">If vertebrate research, is the project IACUC approved?</label>
              <div class="input-group">
                <input type="radio" name="IACUCApproved" value="no" label="No" id="IACUCApproved" required>No
                <input type="radio" name="IACUCApproved" value="yes" label="Yes" id="IACUCApproved" required>Yes
      			  </div>
              <label for="IACUCProtocol">If yes, what is the IACUC protocol number:</label>
                <div class="input-group"><input type="text" name="IACUCProtocol" value="" size="10" maxlength="5"
                      class="form-control"><p class="help-block">XX-XX</p>
              </div> <br />
              <label for="IBCApproved">If recombinant DNA research, is the project IBC approved?</label>
              <div class="input-group"><input type="radio" name="IBCApproved" value="no" label="No" id="IBCApproved" required>
                No
                <input type="radio" name="IBCApproved" value="yes" label="Yes" id="IBCApproved" required>
                Yes
      			  </div>
              <label for="IBCProtocol">If yes, what is the IBC protocol number:</label>
              <div class="input-group"><input type="text" name="IBCProtocol" value="" size="10" maxlength="5" class="form-control">
                <p class="help-block">XX-XX</p>
              </div>
              <div class='row'><hr></div>
              <label for="Abroad">Does your research project require travel outside of the United States?</label>
              <div class="input-group">
                <input type="radio" name="Abroad" value="no" label="No" id="Abroad" required>
                No
        			  <input type="radio" name="Abroad" value="yes" label="Yes" id="Abroad" required>
                Yes
              </div><br />
          		<label for="Visible">If funded do you give the OSR permission to post your "Project Description" on the OSR website under the "Current Projects" link?</label>
              <div class="input-group">
                <input type="radio" name="Visible" value="no" label="No" id="Visible" required>
                No
                <input type="radio" name="Visible" value="yes" label="Yes" id="Visible" required>
                Yes
              </div>
        </div>
    </div>

    <input type="submit" name="Submit" value="Submit" validate="submitonce" class="btn btn-default">
		<input type="reset" name="Reset" value="Clear" class="btn btn-default">


</form>
