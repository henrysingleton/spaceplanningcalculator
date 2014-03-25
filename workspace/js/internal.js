"use strict";

$(document).ready(function(){

	Site.init();

});

var Site = {
	
	init:function() {
		
		this.categoryTotals = $('.category-total');
		this.tables = $('table.category');
		this.headcountFields = $('input.input.headcount');
		
		// Helper function. Computes the sum of all the values contained in the passed html field elements
		this.sumFields = function(fields) {
			var total = 0;
			fields.each(function(){
				total += ($(this).val() * 1);
			});
			return total;
		}
		
		// Helper function. Used in all field objects unless custom functionality is desired. 
		this.update = function() {
			this.field.val(this.value.toFixed(2));
		}
		
		/* set up each of the primary calculation fields as an object. The calculate() and update() methods are called inside Site.recalculate for each of these any time a change is made. For this reason, these methods must be of high performance.   */
		
		this.fields = {
			
			subTotal: {
				field: $('.sub-total'),
				value: 0,
				factor: 0.3,
				calculate: function() {
					this.value = Site.sumFields(Site.categoryTotals);
				},
				update: Site.update
			},
			
			circulationSpace: {
				field: $('.circulation-space'),	
				value: 0,
				factor: 0.3,
				calculate: function() {
					this.value = Site.fields.subTotal.value * this.factor;
				},
				update: Site.update
			},
			
			buildingInefficiency: {
				field: $('.building-inefficiency'),	
				value: 0,
				factor: 0.03,
				calculate: function() {
					this.value = (Site.fields.subTotal.value + Site.fields.circulationSpace.value) * this.factor;
				},
				update: Site.update
			},
			
			totalArea: {
				field: $('.total-area'),	
				value: 0,
				calculate: function() {
					this.value = (Site.fields.subTotal.value + Site.fields.circulationSpace.value +  Site.fields.buildingInefficiency.value);
				},
				update: Site.update
			},
			
			totalHeadcount: {
				field: $('.total-headcount'),	
				value: 0,
				calculate: function() {
					this.value = Site.sumFields(Site.headcountFields);
				},
				update: Site.update
			},
			
			spacePerPerson: {
				field: $('.space-per-person'),	
				value: 0,
				calculate: function() {
					this.value = Site.fields.totalArea.value / Site.fields.totalHeadcount.value;
				},
				update: Site.update
			},

		};

		$('input.input').on({
			blur: Site.recalculate,
			change: Site.recalculate
		});
		
	},

	recalculate:function() {
		var inputField = $(this);
		if (inputField.val().length <= 0) return;
		var area = inputField.attr('data-area'),
		result = area * inputField.val();
		inputField.parent().parent().find('input.output').val(result.toFixed(2));
		$.each(Site.tables,Site.calculateCategoryTotal);
		
		//for each of the fields calculate it and update it. 
		$.each(Site.fields, function() {
			if (typeof this.calculate == "function" && typeof this.update == "function") {
				this.calculate();
				this.update();
			}
		});
		
	},
	
	/* Calculate specifc area total. Expects to be passed index and html table object (default for jQuery each() )*/
	calculateCategoryTotal:function(index,table) {
		var table = $(table);
		table.categoryTotal = 0;
		table.find('.position-total').each(function(){
			table.categoryTotal += ($(this).val() * 1);
		});
		table.find('.category-total').val(table.categoryTotal);
	},


};