Debacle.Views.PagesPopup = Backbone.View.extend({

	template: JST['pages/popup'],
	
	events: {
		'click #ok' : 'closePopup',
		'click #fb_login' : 'facebookLogin'
	},
	
	render: function() {
		var that = this;
		$('#popup').removeClass('hide');
		$(this.el).html(this.template({
			
		}));
		if (this.options.construction) {
			setTimeout(function() {
				that.renderConstruction();
			}, 1);
		} else {
			setTimeout(function() {
				that.renderMessage();
				that.renderLogin();
			}, 1);
		}
		return this;
	},
	
	initialize: function() {
		this.current_user = this.options.current_user;
		this.topic = this.options.topic;
		this.tu_lvls = this.options.tu_lvls;
	},
	
	renderMessage: function() {
		$('#message').html(JST['pages/_message']({topic: this.topic, user: this.current_user, tu_lvls: this.tu_lvls}));
	},
	
	renderLogin: function() {
		if (this.current_user.get('is_temp_user')) {
			$('#login').html(JST['pages/_login']);
		}
	},
	
	closePopup: function() {
		$('#popup').addClass('hide');
		$('#popup_inner').children().remove();
	},
	
	facebookLogin: function() {
		window.location = "http://mysterious-meadow-3843.herokuapp.com/auth/facebook";
	},
	
	renderConstruction: function() {
		$('#under_construction').html(JST['pages/_construction']);
	},
});