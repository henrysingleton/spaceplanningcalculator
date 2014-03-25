<?php

	require_once(TOOLKIT . '/class.event.php');

	Class eventpublic_survey_submission_step_2 extends SectionEvent{

		public $ROOTELEMENT = 'public-survey-submission-step-2';

		public $eParamFILTERS = array(
			'etm-send-public-survey-email-notification'
		);

		public static function about(){
			return array(
				'name' => 'Public Survey Submission: Step 2',
				'author' => array(
					'name' => 'Henry Singleton',
					'website' => 'http://colliers-space-calculator.dev.limelightdigital.com',
					'email' => 'henry@limelightdigital.com'),
				'version' => 'Symphony 2.3.4',
				'release-date' => '2014-03-10T23:56:45+00:00',
				'trigger-condition' => 'action[public-survey-submission-step-2]'
			);
		}

		public static function getSource(){
			return '77';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;public-survey-submission-step-2 result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/public-survey-submission-step-2></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;public-survey-submission-step-2 result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/public-survey-submission-step-2></code></pre>
        <p>The following is an example of what is returned if any options return an error:</p>
        <pre class="XML"><code>&lt;public-survey-submission-step-2 result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;filter name="admin-only" status="failed" />
  &lt;filter name="send-email" status="failed">Recipient not found&lt;/filter>
  ...
&lt;/public-survey-submission-step-2></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
  &lt;label>Name
    &lt;input name="fields[name]" type="text" />
  &lt;/label>
  &lt;label>Phone Number
    &lt;input name="fields[phone-number]" type="text" />
  &lt;/label>
  &lt;label>Email
    &lt;input name="fields[email]" type="text" />
  &lt;/label>
  &lt;label>Company
    &lt;input name="fields[company]" type="text" />
  &lt;/label>
  &lt;label>Industry
    &lt;select name="fields[industry]">
      &lt;option value="Accounting">Accounting&lt;/option>
      &lt;option value="Advertising/Media">Advertising/Media&lt;/option>
      &lt;option value="Banking/Financial">Banking/Financial&lt;/option>
      &lt;option value="Call Centre/Customer Service">Call Centre/Customer Service&lt;/option>
      &lt;option value="Consulting">Consulting&lt;/option>
      &lt;option value="Engineering/Property">Engineering/Property&lt;/option>
      &lt;option value="Government">Government&lt;/option>
      &lt;option value="Healthcare/Pharmaceutical/Medical">Healthcare/Pharmaceutical/Medical&lt;/option>
      &lt;option value="Hospitality">Hospitality&lt;/option>
      &lt;option value="Insurance/Superannuation">Insurance/Superannuation&lt;/option>
      &lt;option value="Legal">Legal&lt;/option>
      &lt;option value="Marketing">Marketing&lt;/option>
    &lt;/select>
  &lt;/label>
  &lt;label>Number of staff
    &lt;input name="fields[number-of-staff]" type="text" />
  &lt;/label>
  &lt;label>Current space
    &lt;input name="fields[current-space]" type="text" />
  &lt;/label>
  &lt;input name="action[public-survey-submission-step-2]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://colliers-space-calculator.dev.limelightdigital.com/success/" /></code></pre>';
		}

		public function load(){
			if(isset($_POST['action']['public-survey-submission-step-2'])) return $this->__trigger();
		}

	}
