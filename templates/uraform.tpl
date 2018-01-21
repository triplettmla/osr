<h1>Undergraduate Research Assistantship</h1>
<form name="ura" id="form" action="{SUBMITLINK}" method="post" >
       <div class="panel panel-default">
       <div class="panel-heading">Faculty Member</div>
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
                </div><br />
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
      			</div><br />
                <label for="FADepartment">Department/Program:</label>
                <div class="input-group">
                <select name="FADepartment" class="form-control">
					             {DEPARTMENTS}
              	</select>
                </div>
            </div>
	   </div>
       <div class="panel panel-default">
  		<div class="panel-heading">Student Information</div>
  			<div class="panel-body">

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
                </div>
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
                <label for="ASUBox">ASU Box:</label>
                <div class="input-group">
                	<input type="text"
                    class="form-control"
                    name="ASUBox"
                    value=""
                    size="30"
                    maxlength="100"
                    id="ASUBox">
                </div><br />
                <label for="StudentGPA">GPA:</label>
                <div class="input-group">
               	<input type="text"
                class="form-control"
                name="StudentGPA"
                value=""
                size="10"
                maxlength="5"
                required="yes"
                id="StudentGPA">
                </div><br />
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
                </div><br />
                <label for="Majors">Majors </label>
                <div class="input-group">
                  <select name="Major" class="form-control">
                    {MAJORS}
                  </select>
                </div>

               </div>
        </div>
        <div class="panel panel-default">
        <div class="panel-heading">About the Research</div>
  			<div class="panel-body">
             <label for="Spring">Semester Requesting Funding For:</label>
                <div class="input-group">

<input type="checkbox" name="Spring" value="2018" label="Spring" id="Spring" required checked="yes">&nbsp;&nbsp;Spring 2018
	<input name="Amount" type="hidden" value="1000" id="Amount"  />
				</div><br />
             <label for="ResearchTitle">Research Title: </label>
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
              <label for="ProjectGoals">Project Goals:</label>
              <p><em>Please explain how this is considered scholarship for your academic discipline. Include the general design of the project or creative endeavor. Max 2000 characters including spaces.</em></p>
              <div class="input-group col-md-10">
              <textarea required
              name="ProjectGoals"
              value=""
              id="ProjectGoals"
              cols="60"
              rows="8"
              maxlength="2200"
              class="form-control"></textarea>
                </div><br />
                <label for="MentorRole">Role of the Faculty Mentor:</label>
              <p><em>Briefly explain what role you will play as the faculty member in mentoring  this student, also discuss any previous experience you have in mentoring undergraduate students. Max 2000 characters including spaces.</em></p>
              <div class="input-group col-md-10">
              <textarea required
              name="MentorRole"
              value=""
              id="MentorRole"
              cols="60"
              rows="8"
              maxlength="2200"
              class="form-control"></textarea>
                </div><br />
                 <label for="StudentRole">Role of the Student:</label>
              <p><em>What do you expect the student to get out of this experience?  What is the student's involvement in the project? Max 2000 characters including spaces.</em></p>
              <div class="input-group col-md-10">
              <textarea required
              name="StudentRole"
              value=""
              id="StudentRole"
              cols="60"
              rows="8"
              maxlength="2200"
              class="form-control"></textarea>
                </div><br />
                <label for="Outcome">Demonstrated Outcome:</label>
              <p><em>Why do you think the student is deserving of this assistantship?  How will your research program benefit? Max 2000 characters including spaces.</em></p>
              <div class="input-group col-md-10">
              <textarea required
              name="Outcome"
              value=""
              id="Outcome"
              cols="60"
              rows="8"
              maxlength="2200"
              class="form-control"></textarea>
                </div><br />
                <div class='row'><hr></div>
              <p><strong>Compliance Questions: Please contact the Office of Research Protections if you have questions about the required Compliance Questions at <a ref="mailto:compliance@appstate.edu">compliance@appstate.edu</a> or 828-262-2692. The Office of Student Research cannot answer questions about this information. If compliance approval is not applicable to your research, please click no for each response.</strong></p>
              <label for="IRBApproved">If human research, is the project IRB approved?</label>
              <div class="input-group"><input type="radio" name="IRBApproved" value="no" label="No" id="IRBApproved">
No
  <input type="radio" name="IRBApproved" value="yes" label="Yes" id="IRBApproved">
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
              <div class="input-group"><input type="radio" name="IACUCApproved" value="no" label="No" id="IACUCApproved">
No
  <input type="radio" name="IACUCApproved" value="yes" label="Yes" id="IACUCApproved">
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
              <div class="input-group"><input type="radio" name="IBCApproved" value="no" label="No" id="IBCApproved">
No
  <input type="radio" name="IBCApproved" value="yes" label="Yes" id="IBCApproved">
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

	   <input type="hidden" name="ApplicationDate" id="ApplicationDate" value="{ts '2018-01-19 08:03:52'}">
       <input type="submit" name="Submit" value="Submit" validate="submitonce" class="btn btn-default">
		  <input type="reset" name="Reset" value="Clear" class="btn btn-default">

</form>
