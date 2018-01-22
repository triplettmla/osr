<h1>OSR Travel Grant Application</h1>
<form name="TravelApply" id="form" action="index.php?module=osr&cmd=travelpost" method="post">
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
                <label for="Majors">Majors </label>
                <div class="input-group">
                    <select name="Major" class="form-control">

                    {MAJORS}

                    </select>
                </div><br />
                <label for="Honors">Are you a member of the Honors College?</label>
                <div class="input-group">
            	<input type="radio" name="Honors" value="no" label="No" checked="true" id="Honors" required>
                No
                <input type="radio" name="Honors" value="yes" label="Yes" id="Honors" required>
                Yes
                </div><br />
                <label for="GPA">GPA:</label>
                <div class="input-group">
               	<input  type="number"
                step="any"
                min="0.00"
                max="4.00"
                title="GPA must be a decimal number"
                class="form-control"
                name="GPA"
                value=""
                size="10"
                maxlength="5"
                required="yes"
                id="GPA">
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
       <div class="panel-heading">About Your Travel</div>
  			<div class="panel-body">
            <label for="Amount">Amount Requested (up to $300):</label>
            <div class="input-group col-md-2">
            <span class="input-group-addon">$</span>
            	<input type="number"
                class="form-control"
                name="Amount"
                value=""
                size="10"
                maxlength="4"
                min="1"
                max="300"
                required="yes"
                id="Amount">
            <span class="input-group-addon">.00</span>
            </div><br />

            <label for="AmountLess">Would you be willing to accept less than the amount requested?</label>
            <div class="input-group">
		    <input type="radio" name="AmountLess" value="no" label="No" id="AmountLess" required>
No
  			<input type="radio" name="AmountLess" value="yes" label="Yes" id="AmountLess" required>
Yes
			</div><br />
            <label for="BudgetJustification">Budget Justification</label>
            <p><em>Please provide an itemized list of exact lodging, meal, mileage, parking and registration expenses needed for your travel.(Max 1500 characters including spaces)</em></p>
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
              <label for="PresentationDescription">Presentation Description:</label>
              <p><em>Please provide a description of the presentation or creative performance that you will deliver? Please describe in detail your role in the presentation. (i.e. poster, oral talk, creative endeavor, your specific role, whether or not there are co-presenters, etc.)(Max 3000 characters including spaces)</em></p>
          	   <div class="input-group col-md-10">
               <textarea required
              name="PresentationDescription"
              value=""
              id="PresentationDescription"
              cols="60"
              rows="8"
              maxlength="3200"
              class="form-control"></textarea>
                </div><br />
                <label for="MeetingName">Name of Meeting: </label>
                <div class="input-group col-md-10">
          		<input type="text"
                required
                class="form-control"
                name="MeetingName"
                value=""
                size="60"
                maxlength="200"
             	id="MeetingName">
                </div><br />
                <label for="Abroad">Does this project require international travel?</label>
              <div class="input-group">
              <input type="radio" name="Abroad" value="no" label="No" id="Abroad" required>
No
  			  <input type="radio" name="Abroad" value="yes" label="Yes" id="Abroad" required>
    Yes		  </div><br />
              <label for="MeetingCity">--Required for US Travel ONLY-- <br />Meeting City:</label>
              <div class="input-group col-md-3">
              <input type="text"
                id="MeetingCity"
                name="MeetingCity"
                value=""
                size="60"
                maxlength="250"
                class="form-control">
              </div>
              <label for="MeetingState">Meeting State:</label>
              <div class="input-group col-md-3">
                <select name="MeetingState"  id="MeetingState">
                      <option value="" selected="selected">Choose a State</option>
                      <option value="AL">Alabama </option>
                      <option value="AK">Alaska </option>
                      <option value="AZ">Arizona </option>
                      <option value="AR">Arkansas </option>
                      <option value="CA">California </option>
                      <option value="CO">Colorado </option>
                      <option value="CT">Connecticut </option>
                      <option value="DC">D.C. </option>
                      <option value="DE">Delaware </option>
                      <option value="FL">Florida </option>
                      <option value="GA">Georgia </option>
                      <option value="HI">Hawaii </option>
                      <option value="ID">Idaho </option>
                      <option value="IL">Illinois </option>
                      <option value="IN">Indiana </option>
                      <option value="IA">Iowa </option>
                      <option value="KS">Kansas </option>
                      <option value="KY">Kentucky </option>
                      <option value="LA">Louisiana </option>
                      <option value="ME">Maine </option>
                      <option value="MD">Maryland </option>
                      <option value="MA">Massachusetts </option>
                      <option value="MI">Michigan </option>
                      <option value="MN">Minnesota </option>
                      <option value="MS">Mississippi </option>
                      <option value="MO">Missouri </option>
                      <option value="MT">Montana </option>
                      <option value="NE">Nebraska </option>
                      <option value="NV">Nevada </option>
                      <option value="NH">New Hampshire </option>
                      <option value="NJ">New Jersey </option>
                      <option value="NM">New Mexico </option>
                      <option value="NY">New York </option>
                      <option value="NC">North Carolina </option>
                      <option value="ND">North Dakota </option>
                      <option value="OH">Ohio </option>
                      <option value="OK">Oklahoma </option>
                      <option value="OR">Oregon </option>
                      <option value="PA">Pennsylvania </option>
                      <option value="RI">Rhode Island </option>
                      <option value="SC">South Carolina </option>
                      <option value="SD">South Dakota </option>
                      <option value="TN">Tennessee </option>
                      <option value="TX">Texas </option>
                      <option value="UT">Utah </option>
                      <option value="VT">Vermont </option>
                      <option value="VA">Virginia </option>
                      <option value="WA">Washington </option>
                      <option value="WV">West Virginia </option>
                      <option value="WI">Wisconsin </option>
                      <option value="WY">Wyoming</option>
                    </select>
              </div><br />
              <label for="Destination">--Required for International Travel ONLY-- <br />Meeting Destination (City and/or Province, Country):</label>
              <div class="input-group col-md-3">
              <input type="text"
                id="Destination"
                name="Destination"
                value=""
                size="60"
                maxlength="250"
                class="form-control">
              </div><br />
              <label for="Society">Sponsoring Society (please do not abbreviate): </label>
                <div class="input-group col-md-10">
          		<input type="text"
                required
                class="form-control"
                name="Society"
                value=""
                size="60"
                maxlength="100"
             	id="Society">
                </div><br />
                 <label for="MeetingDate">Meeting Date:</label>
                <div class="input-group">
                <input type="text"
                name="MeetingDate"
                value=""
                size="10"
                maxlength="10"
                required="yes"
                pattern="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d"
                title="Please enter a date in the format mm/dd/yyyy"
                class="form-control"
                id="MeetingDate">
                <p class="help-block">mm/dd/yyyy</p>
                </div><br />
                <label for="DepartureDate">Departure Date:</label>
                <div class="input-group">
                <input type="text"
                name="DepartureDate"
                id="DepartureDate"
                value=""
                size="10"
                maxlength="10"
                required="yes"
                pattern="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d"
                title="Please enter a date in the format mm/dd/yyyy"
                class="form-control">
                <p class="help-block">mm/dd/yyyy</p>
                </div><br />
                <label for="ReturnDate">Return Date:</label>
                <div class="input-group">
                <input type="text"
                name="ReturnDate"
                id="ReturnDate"
                value=""
                size="10"
                maxlength="10"
                required="yes"
                pattern="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d"
                title="Please enter a date in the format mm/dd/yyyy"
                class="form-control">
                <p class="help-block">mm/dd/yyyy</p>
                </div><br />
                <label for="PresentationTitle">Presentation Title: </label>
                 <p><em>(max 1000 characters including spaces)</em></p>
                 <div class="input-group col-md-10">
                 <textarea required
                  value=""
                  name="PresentationTitle"
                  id="PresentationTitle"
                  cols="60"
                  rows="3"
                  maxlength="1200"
                  class="form-control"></textarea>
                  </div><br />
                  <label for="PresentationType">Presentation Type:</label>
                  <div class="input-group">
                  <select id="PresentationType" name="PresentationType" class="form-control">
                  <option value="Poster">Poster</option>
                  <option value="Platform Talk">Platform Talk</option>
                  <option value="Creative Performance">Creative Performance</option>
                  </select>
                  </div><br />
                  <label for="Coauthors">Co-authors/presenters (Please list, besides yourself, the other presenters/authors):</label>
                  <div class="input-group">
                  <input type="text"
                    name="Coauthors"
                    value=""
                    size="60"
                    maxlength="100"
                    class="form-control">
                    <p class="help-block">Please list in authorship order.</p>
                  </div><br />



    		  <label for="Visible">If funded do you give the OSR permission to post your "Project Description" on the OSR website under the "Current Projects" link?</label>
              <div class="input-group"><input type="radio" name="Visible" value="no" label="No" required id="Visible" required>
No
  				<input type="radio" name="Visible" value="yes" label="Yes" id="Visible" required>
    Yes		</div>
            </div>
    </div>


	   <input type="hidden" name="ApplicationDate" id="ApplicationDate" value="{ts '2017-12-28 08:55:40'}">
       <input type="submit" name="Submit" value="Submit" validate="submitonce" class="btn btn-default">
		  <input type="reset" name="Reset" value="Clear" class="btn btn-default">

      </form>
