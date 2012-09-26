Debacle.Views.PagesHeader = Backbone.View.extend({
	
	template: JST['pages/header'],
	id: 'tabs',
	
	events: {
		'click #about' : 'pagesAbout',
		'click #home' : 'pagesHome'
	},
	
	render: function() {
		var that = this;
		$(this.el).addClass('header-button-main-container');
		$(this.el).html(this.template({

		}));
		setTimeout(function() {
			that.renderGoHome();
		}, 1);
		return this;
	},
	
	pagesAbout: function() {
		$('#tabs').children().remove();
		$('#topics').find('#topic_xp_bar').children().remove();
		$('#topics div').removeClass('border');
		Backbone.history.navigate('about', true);
	},
	
	renderGoHome: function() {
		$('#goto_home').html(JST['pages/top_logo']);
	},
	
	pagesHome: function() {
		Backbone.history.navigate('', true);
	}
});