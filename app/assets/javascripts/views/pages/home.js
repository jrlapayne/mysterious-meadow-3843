Debacle.Views.PagesHome = Backbone.View.extend({

	template: JST['pages/home'],
	
	events: {
		
	},
	
	render: function() {
		$(this.el).html(this.template({
			
		}));
		return this;
	}
});