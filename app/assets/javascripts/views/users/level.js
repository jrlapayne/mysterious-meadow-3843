Debacle.Views.UsersLevel = Backbone.View.extend({
	
	template: JST['users/level'],
	
	events: {
		
	},
	
	render: function() {
		$(this.el).html(this.template({level: this.options.level}));
		return this;
	}
});