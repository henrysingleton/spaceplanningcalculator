"use strict"

$(document).ready(function(){

	if ($('#public-calc-form')) {
		Public.init();
	}

});

// All public functionality namespaced here. For internal functinality see internal.js. 
var Public = {

	init:function() {
		
		/*
			Barometer object for displaying and controlling barometer widget. 
			Use setState() with degrees(int) or string shortcut. 
		*/
		var barometer = {
			
			// set specific degree values for over and under.
			deg: {
				over: 35,
				under: -35
			},
			currentDeg: 0,
			newDeg: null,
			updateTimeout: 700, //how long to wait between displaying the barometer and updating it. 
			visible: false, //default visibility
			show: function() {
				if (this.visible) return false;
				this.visible = true;
				this.container.addClass('show');
			},
			hide: function() {
				if (!this.visible) return false;
				this.visible = false;
				this.container.removeClass('show');
			},
			//either pass degrees as number or preset ("over", "under" etc, defined in this object)
			displayDeg: function(deg) {
				
				//translate to actual degrees if shorthand identifier is used (eg 'over')
				if (typeof deg == "string") {
					deg = this.deg[deg];
				}
		
				//check we have a valid number
				if (typeof deg != "number") return false;
				
				//dont do anything if current and next values are the same
				if (this.currentDeg == deg) return false;
				
				//set the style text. This could be done better with an external library but it's simple enough for now. 
				var transformStyleValue = "rotate("+deg+"deg)";
				
				var transformStyle = {
					webkitTransform	: transformStyleValue,
					mozTransform		: transformStyleValue,
					msTransform			: transformStyleValue,
					OTransform			: transformStyleValue,
					transform				: transformStyleValue
				};
				
				//set all rotate styles
				this.needle.css(transformStyle);
				
				//store the new value
				this.currentDeg = deg;
				
			},
			
			//helper method to be added to in future if realtime updates are required. 
			updateDeg: function() {
				this.displayDeg(this.newDeg);
			},
			
			//this method is typically the only public method required. Displays the barometer if it's hidden and updates the value. 
			setState: function(state) {
				
				//display the meter if its not currently visible
				if (!this.visible) {
					this.show();
					this.newDeg = state;
					setTimeout(function() {
						barometer.updateDeg();
					}, this.updateTimeout);
				} else {
					this.displayDeg(state);
				}
			}
		};
		
		
		this.calcForm = $('#public-calc-form');
		this.animationContainer = $('#animation-container');
		this.barometerContainer = $('#barometer-container');
		this.followupContainer = $('#followup-container');
		this.currentFrame = 0;
		this.spaceExplanationsOver = $('#space-explanations .over');
		this.spaceExplanationsUnder = $('#space-explanations .under');
		this.stepContainers = $('#steps .value');
		barometer.container = $('#barometer-container');
		barometer.needle = $('#barometer-container .needle');
		
		this.followupForm = $('#followup-form');
		
		this.followupFormFields = [];
		this.followupFormFields[0] = $('#followup-form #fields-industry');
		this.followupFormFields[1] = $('#followup-form #fields-number-of-staff');
		this.followupFormFields[2] = $('#followup-form #fields-current-space');
		this.followupFormFields[3] = $('#followup-form #fields-current-sqmpp');
		this.followupFormFields[4] = $('#followup-form #fields-ideal-sqmpp');
		this.followupFormFields[5] = $('#followup-form #fields-over-under');
		
		var numberOfFrames = 4,
				fieldvalues = [],
				calcFormVanilla = document.querySelectorAll('#public-calc-form'),
				currentStaff,
				currentSpace,
				industryHandle,
				industryName,
				calculatedSqmpp,
				idealSqmpp;
		
		this.followupContainer.hide();
		this.spaceExplanationsOver.hide();
		this.spaceExplanationsUnder.hide();


		fieldvalues[0] = $('#public-calc-form #fields-industry');
		fieldvalues[1] = $('#public-calc-form #fields-number-of-staff');
		fieldvalues[2] = $('#public-calc-form #fields-current-space');
		
		$("#fields-number-of-staff, #fields-current-space").attr('required','required');
		$("#followup-form input[type=text], #followup-form input[type=email]").attr('required','required');
		
		this.followupForm.validate();
		this.calcForm.validate({
 			submitHandler: function() {
 				Public.calcFormSubmit();
 				return false;
 			},
			rules: {
				"fields-number-of-staff": {
					required: true,
					number: true
				},
				"fields-current-space": {
					required: true,
					number: true
				}
			}
		});
		
		this.calcFormSubmit = function() {
			
			//Populate calculator presentation elements with form values. 
			for (var i=0;i<Public.stepContainers.length;i++) {
				$(Public.stepContainers[i]).text(fieldvalues[i].val());
				Public.followupFormFields[i].val(fieldvalues[i].val());
			}
			
			industryHandle = fieldvalues[0].val();
			currentStaff =   fieldvalues[1].val();
			currentSpace =   fieldvalues[2].val();
			
			Public.calculateSQMPP();
			
			Public.stepContainers[0].textContent = industryName;
			Public.followupFormFields[3].val(calculatedSqmpp);
			Public.followupFormFields[4].val(idealSqmpp);
			
			$('#barometer .current-sqmpp .value').text(calculatedSqmpp);
			$('#barometer .ideal-sqmpp .value').text(idealSqmpp);
			
			Public.calcForm.addClass('hide');
			Public.animationContainer.addClass('show');
			
			// some really basic animation
			setTimeout(Public.advanceFrame, 200);
			setTimeout(Public.advanceFrame, 1200);
			setTimeout(Public.advanceFrame, 2400);
			setTimeout(Public.advanceFrame, 3200);
			
			setTimeout(Public.showBarometer, 4200);

		};
		
		this.showBarometer = function() {
			//hide the animation container
			Public.animationContainer.removeClass('show');
			Public.followupContainer.show();
			
			if (calculatedSqmpp <= idealSqmpp) {
				Public.spaceExplanationsUnder.show();
				barometer.setState('under');
				Public.followupFormFields[5].val('under');
			}
			if (calculatedSqmpp > idealSqmpp) {
				Public.spaceExplanationsOver.show();
				barometer.setState('over');
				Public.followupFormFields[5].val('over');
			}
		};
		
		//calculates the square meterage per person
		this.calculateSQMPP = function() {
			calculatedSqmpp = (currentSpace/currentStaff).toFixed(0),
			idealSqmpp = industries[industryHandle].sqmpp,
			industryName = industries[industryHandle].name;
		};
		
		/*
		Advance frame by 1 using parent class. 
		Could be done with css3 keyframes only, but we needed more control for the next steps. 
		*/
		this.advanceFrame = function() {
			if (Public.currentFrame === 0) {
				Public.animationContainer.removeClass('frame'+numberOfFrames);
			}
			Public.animationContainer.removeClass('frame'+Public.currentFrame);
			Public.currentFrame++;
			Public.animationContainer.addClass('frame'+Public.currentFrame);
			if (Public.currentFrame == numberOfFrames) {
				Public.currentFrame = 0;
			}

		};
		
		//for debugging.
		Public.animationContainer.click(this.advanceFrame);

	}
};