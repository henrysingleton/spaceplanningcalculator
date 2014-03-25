<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:exsl="http://exslt.org/common"
    xmlns:form="http://nick-dunn.co.uk/xslt/form-controls"
    extension-element-prefixes="exsl form">

	<xsl:import href="../masters/default.xsl"/>
	
	<xsl:variable name="form:event" select="/data/events/public-survey-submission-step-1"/>	
	
	<xsl:template match="data" mode="page-content">
		
		<div id="intro">
			<div id="intro-header">
				<h2 class="public-header">Are you in the right space?</h2>
				
				<div id="step-graphics">
					<figure class="step-item">
						<img src="{$workspace}/images/step1.png"/>
						<figcaption>How many staff?</figcaption>
					</figure>
					<figure class="step-item">
						<img src="{$workspace}/images/step2.png"/>
						<figcaption>Current floor space?</figcaption>
					</figure>
					<figure class="step-item">
						<img src="{$workspace}/images/step3.png"/>
						<figcaption>Calculate</figcaption>
					</figure>
				</div>
			</div>
			
			<div id="intro-text" class="formatted">
				<xsl:call-template name="snippet">
					<xsl:with-param name="name" select="'public-survey-introduction'" />
					<xsl:with-param name="mode" select="'formatted'" />
				</xsl:call-template>
			</div>
		</div>
		
		<div id="interactive-container">
			<form action="" id="public-calc-form" method="post" class="pure-form pure-form-stacked">
				<fieldset>
				<div class="pure-control">
					<label>What industry are you in?</label>
					<xsl:call-template name="form:select">
						<xsl:with-param name="handle" select="'industry'"/>
						<xsl:with-param name="options" select="/data/industries/entry/name"/>
					</xsl:call-template>
				</div>
				<div class="pure-control">
					<label>How many staff do you currently have?</label>
					<xsl:call-template name="form:input">
						<xsl:with-param name="handle" select="'number-of-staff'"/>
						<xsl:with-param name="type" select="'number'"/>
						<xsl:with-param name="required" select="'required'"/>
					</xsl:call-template>
					<aside class="pure-form-message">Only include staff that work on-site at your premises. </aside>
				</div>
				<div class="pure-control">
					<label>How much space do you currently lease?</label>
					<xsl:call-template name="form:input">
						<xsl:with-param name="handle" select="'current-space'"/>
						<xsl:with-param name="type" select="'number'"/>
						<xsl:with-param name="required" select="'required'"/>
					</xsl:call-template>
					<aside class="pure-form-message">Enter a whole number in square meters. </aside>
				</div>
				<button type="submit" class="pure-button pure-button-primary">Calculate</button>
				</fieldset>
			</form>
			
			<div id="animation-container">
				<div id="circle-background"></div>
				<div id="cover"></div>
				<div id="quads">
					<div class="quad nw"></div>
					<div class="quad ne"></div>
					<div class="quad sw"></div>
					<div class="quad se"></div>
				</div>
				
				<div id="steps">
					<div class="step1 industry">
						<label>Industry:</label>
						<div class="value"></div>
					</div>
					<div class="step2 staff">
						<div class="value"></div>
						<label>Staff</label>
					</div>
					<div class="step3 current-space">
						<div class="value-container">
							<span class="value"></span>
							<span class="sqm">sqm</span>
						</div>
						<label>Current space</label>
					</div>
					<div class="step4 preparing">
						<label>
						Calculating<span class="elipsis1">.</span><span class="elipsis2">.</span><span class="elipsis3">.</span>
						</label>
					</div>
				</div>
			</div>
			<div id="barometer-container">
				<div id="space-explanations">
					<div class="over">
						<h2>Your current space usage is above industry&#160;standards. </h2>
					</div>
					<div class="under">
						<h2>Your current space usage is below industry&#160;standards. </h2>
					</div>
				</div>
				
				<div id="barometer">
					<div class="barometer-mask"></div>
					<div class="scale"></div>
					<div class="needle"></div>
					<div class="counter">
						<div class="current-sqmpp">
							<span class="value"></span>
							<span class="sqm">sqmpp</span>
						</div>
						<div class="ideal-sqmpp">
							<span class="sqm">Industry standard:</span>
							<span class="value"></span>
							<span class="sqm">sqmpp</span>
						</div>
					</div>
				</div>

			</div>
			
			<div id="followup-container">
				<h2>Find out more</h2>
				<p><em>Form disabled</em></p>
				<form id="followup-form" method="post" class="pure-form pure-form-stacked">
					<div class="pure-control">
						<label>Your Name</label>
						<xsl:call-template name="form:input">
							<xsl:with-param name="handle" select="'name'"/>
							<xsl:with-param name="class" select="'required'"/>
						</xsl:call-template>
					</div>
					<div class="pure-control">
						<label>Phone</label>
						<xsl:call-template name="form:input">
							<xsl:with-param name="handle" select="'phone-number'"/>
							<xsl:with-param name="class" select="'required'"/>
						</xsl:call-template>
					</div>
					<div class="pure-control">
						<label>Email address</label>
						<xsl:call-template name="form:input">
							<xsl:with-param name="handle" select="'email'"/>
							<xsl:with-param name="class" select="'required'"/>
							<xsl:with-param name="type" select="'email'"/>
						</xsl:call-template>
					</div>
					<div class="pure-control">
						<label>Company Name</label>
						<xsl:call-template name="form:input">
							<xsl:with-param name="handle" select="'company'"/>
						</xsl:call-template>
					</div>
					
					<xsl:call-template name="form:input">
						<xsl:with-param name="handle" select="'industry'"/>
						<xsl:with-param name="type" select="'hidden'"/>
					</xsl:call-template>
					<xsl:call-template name="form:input">
						<xsl:with-param name="handle" select="'number-of-staff'"/>
						<xsl:with-param name="type" select="'hidden'"/>
					</xsl:call-template>
					<xsl:call-template name="form:input">
						<xsl:with-param name="handle" select="'current-space'"/>
						<xsl:with-param name="type" select="'hidden'"/>
					</xsl:call-template>
					<xsl:call-template name="form:input">
						<xsl:with-param name="handle" select="'current-sqmpp'"/>
						<xsl:with-param name="type" select="'hidden'"/>
					</xsl:call-template>
					<xsl:call-template name="form:input">
						<xsl:with-param name="handle" select="'ideal-sqmpp'"/>
						<xsl:with-param name="type" select="'hidden'"/>
					</xsl:call-template>
					<xsl:call-template name="form:input">
						<xsl:with-param name="handle" select="'over-under'"/>
						<xsl:with-param name="type" select="'hidden'"/>
					</xsl:call-template>
					
					<xsl:call-template name="form:input">
						<xsl:with-param name="handle" select="'referrer'"/>
						<xsl:with-param name="type" select="'hidden'"/>
						<xsl:with-param name="value" select="/data/referrer/entry/@id"/>
					</xsl:call-template>
					
					<button type="submit" class="pure-button pure-button-primary" name="action[public-survey-submission-step-2]">Submit</button>
				</form>
			</div>
			
		</div> <!-- Interactive container --> 
		
		
		


	</xsl:template>
</xsl:stylesheet>