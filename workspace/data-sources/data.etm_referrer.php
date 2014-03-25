<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceetm_referrer extends SectionDatasource {

		public $dsParamROOTELEMENT = 'etm-referrer';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '1';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamREQUIREDPARAM = '$ds-etm-public-survey.referrer';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'system:id' => '{$ds-etm-public-survey.referrer}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'name',
				'code',
				'email'
		);
		

		public function __construct($env=NULL, $process_params=true) {
			parent::__construct($env, $process_params);
			$this->_dependencies = array('$ds-etm-public-survey.referrer');
		}

		public function about() {
			return array(
				'name' => 'ETM: Referrer',
				'author' => array(
					'name' => 'Henry Singleton',
					'website' => 'http://colliers-space-calculator.dev.limelightdigital.com',
					'email' => 'henry@limelightdigital.com'),
				'version' => 'Symphony 2.3.4',
				'release-date' => '2014-03-21T00:12:11+00:00'
			);
		}

		public function getSource() {
			return '81';
		}

		public function allowEditorToParse() {
			return true;
		}

		public function execute(array &$param_pool = null) {
			$result = new XMLElement($this->dsParamROOTELEMENT);

			try{
				$result = parent::execute($param_pool);
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage() . ' on ' . $e->getLine() . ' of file ' . $e->getFile()));
				return $result;
			}

			if($this->_force_empty_result) $result = $this->emptyXMLSet();

			return $result;
		}

	}
