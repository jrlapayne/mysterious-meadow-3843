Debacle.Views.PagesMiniProfile = Backbone.View.extend({

	template: JST['pages/mini_profile'],
	
	events: {
		'click #fb_login' : 'facebookLogin'
	},
	
	render: function() {
		var that = this;
		$(this.el).html(this.template({
			current_user: this.options.current_user
		}));
		setTimeout(function() { that.renderGlobalXp(),1});
		return this;
	},
	
	initialize: function() {
		
	},
	
	renderGlobalXp: function() {
		var view = new Debacle.Views.XpBarsGlobal({
			users: this.options.users,
			current_user: this.options.current_user,
			g_lvls: this.options.g_lvls
		});
		$('#global_xp_bar').html(view.render().el);
	},
	
	facebookLogin: function() {
		window.location = "http://mysterious-meadow-3843.herokuapp.com/auth/facebook";
	}
});