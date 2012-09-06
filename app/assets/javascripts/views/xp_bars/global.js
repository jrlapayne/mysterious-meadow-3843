Debacle.Views.XpBarsGlobal = Backbone.View.extend({
	
	template: JST['xp_bars/global'],
	
	events: {
		
	},
	
	render: function() {
		var user = this.options.users.where({id: this.options.current_user.get('id')})[0];
		$(this.el).html(this.template({
			width: this.getWidth(),
			level: user.get('level') + 1
		}));
		return this;
	},
	
	initialize: function() {
		this.options.users.on('change', this.render, this);
	},
	
	getWidth: function() {
		var user = this.options.users.where({id: this.options.current_user.get('id')})[0];
		var g_lvl, width;
		
		g_lvl = this.options.g_lvls.where({level: user.get('level')})[0];
		width = Math.round(100 * (user.get('xp') / g_lvl.get('xp_req')));
		return width;
	}
});