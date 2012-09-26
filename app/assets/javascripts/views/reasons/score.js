Debacle.Views.ReasonsScore = Backbone.View.extend({

	template: JST['reasons/score'],
	
	events: {
		
	},
	
	render: function() {
		$(this.el).html(this.template({
			sum: this.options.reasons.where({id: this.options.reason.get('id')})[0].get('score')
		}));
		return this;
	},
	
	initialize: function() {
		this.options.reasons.on('change', this.render, this);
	}
});