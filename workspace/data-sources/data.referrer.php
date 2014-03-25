<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcereferrer extends SectionDatasource {

		public $dsParamROOTELEMENT = 'referrer';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamREQUIREDPARAM = '$url-r';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'586' => '{$url-r}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'name',
				'code',
				'email'
		);
		

		public function __construct($env=NULL, $process_params=true) {
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about() {
			return array(
				'name' => 'Referrer',
				'author' => array(
					'name' => 'Henry Singleton',
					'website' => 'http://colliers-space-calculator.dev.limelightdigital.com',
					'email' => 'henry@limelightdigital.com'),
				'version' => 'Symphony 2.3.4',
				'release-date' => '2014-03-20T23:59:52+00:00'
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
