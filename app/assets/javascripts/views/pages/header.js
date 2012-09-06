Debacle.Views.PagesHeader = Backbone.View.extend({
	
	template: JST['pages/header'],
	id: 'tabs',
	
	events: {
		'click #about' : 'pagesAbout'
	},
	
	render: function() {
		$(this.el).addClass('header-button-main-container');
		$(this.el).html(this.template({
			
		}));
		return this;
	},
	
	pagesAbout: function() {
		$('#tabs').children().remove();
		$('#topics').find('#topic_xp_bar').children().remove();
		$('#topics div').removeClass('border');
		Backbone.history.navigate('about', true);
	}
});