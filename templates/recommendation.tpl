<h1>Recommendation</h1>
<form name="Recommendation" id="form" action="index.php?module=osr&cmd=recommendationpost" method="post" >

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
                <label for="FAUsername">AppalNet Username:</label><br />
                <div class="input-group">
                  <input type="text" class="form-control" id="FAUsername" name="FAUsername" value="" required size="30" maxlength="100">
                  <p class="help-block">AppalNet username only - do NOT enter your complete email address</p>
                </div>
                <label for="FAEmail">Email:</label>
                <div class="input-group">
                  <input type="email" class="form-control" id="FAEmail" name="FAEmail" value="" required size="30" maxlength="100">
                </div>
                <label for="FAPhone">Phone:</label>
                <div class="input-group">
                  <input class="form-control"
                    name="FAPhone" type="Text"
                    id="FAPhone"
                    value=""
                    size="12"
                    maxlength="12"
                    required="Yes"
                    pattern="^[1-9]\d{2}-\d{3}-\d{4}" title="Please enter a phone number in the format 123-456-7890.">
          			<p class="help-block">123-456-7890</p>
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
  		<div class="panel-heading">Student Information</div>
  			<div class="panel-body">

                <label for="FirstName">First Name:</label>
                <div class="input-group">
                  <input type="text" class="form-control" id="FirstName" name="FirstName" value="" required size="30" maxlength="100" >
                </div>
                <label for="LastName">Last Name:</label>
                <div class="input-group">
                  <input type="text" class="form-control" id="LastName" name="LastName" value="" required size="30" maxlength="100" >
                </div><br />
                <label for="GrantType">This student is applying for:</label>
                <div class="input-group">
                <input type="radio" name="GrantType" value="OSRResearch" label="OSRResearch" id="GrantType" required message="Type of Grant is required!">OSR Research Grant <br />
          <input type="radio" name="GrantType" value="OSRTravel" label="OSRTravel" id="GrantType" required>OSR Travel Grant <br />
          <input type="radio" name="GrantType" value="International" label="International" id="GrantType" required>International Research Grant <br />
          <input type="radio" name="GrantType" value="CommunityBasedResearch" label="CommunityBasedResearch" id="GrantType" required>Community Based Research Grant	<br />
          <input type="radio" name="GrantType" value="Graduate" label="Graduate" id="GrantType" required>Cratis D. William Graduate Research Grant<br />

          <input type="radio" name="GrantType" value="Sustainability" label="Sustainability" id="GrantType" required>Creating a Healthy, Just and Sustainable Society Student Research Grant<br />
                </div><div class='row'><hr></div>
                <p><strong>Compliance Questions: Please contact the Office of Research Protections if you have questions about the required Compliance Questions at <a ref="mailto:compliance@appstate.edu">compliance@appstate.edu</a> or 828-262-2692. The Office of Student Research cannot answer questions about this information. If compliance approval is not applicable to your research or if this recommendation is for an OSR Travel Grant, please click NO for each response.</strong></p>
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
                maxlength="8"
                mask="99-9999"
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
                maxlength="8"
                mask="99-99"
                class="form-control"> <p class="help-block">XX-XX</p>
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
                maxlength="8"
                mask="99-99"
                class="form-control"><p class="help-block">XX-XX</p>
                </div><div class='row'><hr></div>
                <label for="Meeting">If the student is applying for an <strong>OSR TRAVEL grant</strong>, you must choose one of the following:</label>
                <div class="input-group">
                <input type="radio" name="Meeting" value="HasBeenSubmitted" label="HasBeenSubmitted" id="Meeting">The project has been submitted for presentation at a professional meeting. <br />
        <input type="radio" name="Meeting" value="WillBeSubmitted" label="WillBeSubmitted" id="Meeting">The project will be submitted for presentation at a professional meeting.<br />
        <input type="radio" name="Meeting" value="HasBeenAccepted" label="HasBeenAccepted" id="Meeting">The project has been accepted for presentation at a professional meeting.<br /><br />
                </div>
                <label for="Justification">If the student is applying for a TRAVEL grant, please describe the student's role in the presentation and why you think they should attend the meeting. If the student is applying for a RESEARCH grant, please describe what role the student will have in the proposed project, their potential to conduct the project, and why you think they are deserving of a research grant. The strength of the Faculty letter of recommendation is an integral component of the OSR grant award process. Please be specific and use detail when completing this section of the recommendation.</label>
                <div class="input-group col-md-10">
                <textarea name="Justification" id="Justification" class="form-control" cols="80" rows="10" ></textarea>
                <p class="help-block"> MAX 2000 characters.</p>
                </div>
            </div>
        </div>
    <input type="hidden" name="RecommendationDate" id="RecommendationDate" value="{ts '2018-01-17 11:00:52'}">
       <input type="submit" name="Submit" value="Submit" validate="submitonce" class="btn btn-default">
		  <input type="reset" name="Reset" value="Clear" class="btn btn-default">

      <input type='text' style='display:none' /></form>
