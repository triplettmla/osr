<h1>Cratis D. Williams Graduate Research Grant</h1>
<form name="ResearchApply" id="form" action="index.php?module=osr&cmd=graduatepost" method="post" >
       <div class="panel panel-default">
  		<div class="panel-heading">About You</div>
  			<div class="panel-body">
                <!---
                <label for="FirstName">First Name:</label>
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
                    value=""
                    size="12"
                    maxlength="12"
                    required="Yes"
                    pattern="^[1-9]\d{2}-\d{3}-\d{4}" title="Please enter a phone number in the format 123-456-7890.">
          			<p class="help-block">123-456-7890</p>
                </div>
                <label for="Status">Status</label>
                <div class="input-group">
                <select name="Status" required="yes" class="form-control">
                    <option value="Freshman" selected="selected">Freshman</option>
                    <option value="Sophomore">Sophomore</option>
                    <option value="Junior">Junior</option>
                    <option value="Senior">Senior</option>
                    <option value="Graduate">Graduate</option>
                    <option value="Doctoral">Doctoral Program</option>
                  </select>
                </div>
                <label for="graduateProgram">Graduate Program </label>
                <div class="input-group">
                    <select name="graduateProgram" class="form-control">
                    {MAJORS}
                    </select>
                </div><br />



               </div>
        </div>
       <div class="panel panel-default">
       <div class="panel-heading">About Your Faculty Mentor</div>
  			<div class="panel-body">
       			 <label for="FAFirstName">First Name:</label>
                <div class="input-group">
                  <input type="text" class="form-control" id="FAFirstName" name="FAFirstName" value="" required size="30" maxlength="100" >
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
            <input type="hidden" name="ApplyingFor" id="ApplyingFor" value="Conduct Research">
            <p class="control-label">The Cratis D. Williams Graduate Research Grant funds expenses incurred to conduct research. Any expenses incurred to *conduct* research are eligible, including supplies, research subject costs, travel to collect data, etc.)</p><br />
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
            <input type="radio" name="PriorFunding" value="no" label="No" id="PriorFunding" required>
No
  			<input type="radio" name="PriorFunding" value="yes" label="Yes" id="PriorFunding" required>
Yes
            </div><br />
            <label for="AmountLess">Would you be willing to accept less than the amount requested?</label>
            <div class="input-group">
		    <input type="radio" name="AmountLess" value="no" label="No" id="AmountLess" required>
No
  			<input type="radio" name="AmountLess" value="yes" label="Yes" id="AmountLess" required>
Yes
			</div><br />
       		<label for="projectType">Project type:</label>
            <div class="input-group">
		    <input name="projectType" id="projectType" type="radio" value="capstone" />
		    Capstone/Exit Research Project<br />
	        <input name="projectType" id="projectType" type="radio" value="learningProduct" />
	        Product of Learning <br />
	        <input name="projectType" id="projectType" type="radio" value="thesis" />
	        Thesis <br />
	        <input name="projectType" id="projectType" type="radio" value="dissertation" />
	        Dissertation<br />
            </div>
            <label for="CourseNumber">Course number for project: </label>
            <div class="input-group">
            <input type="text"
			name="CourseNumber"
			value=""
			size="8"
			maxlength="8"
            pattern="[A-z]{3}-\d{4}"
            title="Please enter a course number in the format BIO-1234"
			id="CourseNumber">
		    <p class="help-block">(ex. BIO-1234)</p>
            </div>
             <label for="thesisApprovedDate">If applicable, date thesis or dissertation committee approved by Graduate School: </label>
            <div class="input-group">
            <input name="thesisApprovedDate" type="text" maxlength="10"  title="Please enter a date in the format mm/dd/yyyy"  id="thesisApprovedDate"  size="10"  />
		    <p class="help-block">mm/dd/yyyy</p>
            </div>
            <label for="prospectusDate">Date prospectus submitted to Graduate School: </label>
            <div class="input-group">
            <input name="prospectusDate" type="text" maxlength="10"  title="Please enter a date in the format mm/dd/yyyy"  id="prospectusDate"  size="10"  />
		    <p class="help-block">mm/dd/yyyy</p>
            </div>
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
              <p><em>What are the goals, objectives and specific aims of the project? Please review the design and methodology that will be employed. Justify how and why your proposed budget is needed to complete this project. (Max 3000 characters including spaces)</em></p>
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
            <label for="TotalCost">The total amount the project will cost upon completion:</label>
            <div class="input-group col-md-2">
            <span class="input-group-addon">$</span>
            	<input type="number"
                class="form-control"
                name="TotalCost"
                value=""
                size="10"
                required="no"
                id="TotalCost">
            <span class="input-group-addon">.00</span>
            </div><br />
            <label for="BudgetJustification">Budget Justification</label>
            <p><em>Please provide an itemized list of materials needed for the project. Include item description, catalog number, cost and vendor. (Max 1500 characters including spaces)</em></p>
            <div class="input-group col-md-10">
          	<textarea required
		  		name="BudgetJustification"
				value=""
				id="BudgetJustification"
				cols="60"
				rows="8"
                maxlength="1700"
                class="form-control"></textarea>
             </div><br />
             <label for="OtherFundingSources">Other Funding Sources:</label>
              <p><em>Please list other funding sources for this project. Include source, amount, date, and whether it is an internal or external source.</em></p>
          	   <div class="input-group col-md-10">
               <textarea required
              name="OtherFundingSources"
              value=""
              id="OtherFundingSources"
              cols="60"
              rows="8"
              maxlength="1700"
              class="form-control"></textarea>
                </div><br />
             <label for="Results">What are your plans for formal dissemination of results?</label>
          	   <div class="input-group col-md-10">
               <textarea required
              name="Results"
              value=""
              id="Results"
              cols="60"
              rows="3"
              maxlength="1700"
              class="form-control"></textarea>
                </div><br />
             <div class='row'><hr></div>
              <p><strong>Compliance Questions: Please contact the Office of Research Protections if you have questions about the required Compliance Questions at <a ref="mailto:compliance@appstate.edu">compliance@appstate.edu</a> or 828-262-2692. The Office of Student Research cannot answer questions about this information. If compliance approval is not applicable to your research, please click no for each response.</strong></p>
              <label for="IRBApproved">If human research, is the project IRB approved?</label>
              <div class="input-group"><input type="radio" name="IRBApproved" value="no" label="No" id="IRBApproved" required>
No
  <input type="radio" name="IRBApproved" value="yes" label="Yes" id="IRBApproved" required>
Yes
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
              <div class="input-group"><input type="radio" name="IACUCApproved" value="no" label="No" id="IACUCApproved" required>
No
  <input type="radio" name="IACUCApproved" value="yes" label="Yes" id="IACUCApproved" required>
Yes
			  </div>
              <label for="IACUCProtocol">If yes, what is the IACUC protocol number:</label>
              <div class="input-group"><input type="text"
                name="IACUCProtocol"
                value=""
                size="10"
                maxlength="5"
                class="form-control"><p class="help-block">XX-XX</p>
              </div> <br />
              <label for="IBCApproved">If recombinant DNA research, is the project IBC approved?</label>
              <div class="input-group"><input type="radio" name="IBCApproved" value="no" label="No" id="IBCApproved" required>
No
  <input type="radio" name="IBCApproved" value="yes" label="Yes" id="IBCApproved" required>
Yes
			  </div>
              <label for="IBCProtocol">If yes, what is the IBC protocol number:</label>
              <div class="input-group"><input type="text"
                name="IBCProtocol"
                value=""
                size="10"
                maxlength="5"
                class="form-control"><p class="help-block">XX-XX</p>
              </div> <div class='row'><hr></div>
            <label for="Abroad">Does your research project require travel outside of the United States?</label>
              <div class="input-group">
              <input type="radio" name="Abroad" value="no" label="No" required id="Abroad" required>
No
  			  <input type="radio" name="Abroad" value="yes" label="Yes" id="Abroad" required>
    Yes		  </div><br />
    	</div>
    </div>



       <input type="submit" name="Submit" value="Submit" validate="submitonce" class="btn btn-default">
		  <input type="reset" name="Reset" value="Clear" class="btn btn-default">


      </form>
