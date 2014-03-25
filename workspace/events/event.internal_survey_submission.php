<?php

	require_once(TOOLKIT . '/class.event.php');

	Class eventinternal_survey_submission extends SectionEvent{

		public $ROOTELEMENT = 'internal-survey-submission';

		public $eParamFILTERS = array(
			
		);

		public static function about(){
			return array(
				'name' => 'Internal Survey Submission',
				'author' => array(
					'name' => 'Henry Singleton',
					'website' => 'http://colliers-space-calculator.dev.limelightdigital.com',
					'email' => 'henry@limelightdigital.com'),
				'version' => 'Symphony 2.3.4',
				'release-date' => '2014-01-02T03:02:53+00:00',
				'trigger-condition' => 'action[internal-survey-submission]'
			);
		}

		public static function getSource(){
			return '78';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;internal-survey-submission result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/internal-survey-submission></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;internal-survey-submission result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/internal-survey-submission></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
  &lt;label>Address
    &lt;input name="fields[address]" type="text" />
  &lt;/label>
  &lt;label>Division
    &lt;input name="fields[division]" type="text" />
  &lt;/label>
  &lt;label>Operations
    &lt;input name="fields[operations]" type="text" />
  &lt;/label>
  &lt;label>Current area
    &lt;input name="fields[current-area]" type="text" />
  &lt;/label>
  &lt;input name="action[internal-survey-submission]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://colliers-space-calculator.dev.limelightdigital.com/success/" /></code></pre>';
		}

		public function load(){
			if(isset($_POST['action']['internal-survey-submission'])) {
				var_dump($_POST);
				
				return $this->__trigger();
			}
		}

	}
