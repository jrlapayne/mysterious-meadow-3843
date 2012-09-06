Debacle.Views.ReasonsShow = Backbone.View.extend({
	
	template: JST['reasons/show'],
	id: 'reason',
	
	events: {
		'click #upvote' : 'popup',
		'click #downvote' : 'popup'
	},
	
	render: function() {
		this.setClass(this.options.position);
		$(this.el).html(this.template({
			reason: this.options.reason,
			sum: this.options.reason.get('score')
		}));
		return this;
	},
	
	setClass: function(position) {
		if (position === 'top') {
			$(this.el).addClass('fact-panel top-perma-panel');
		} else if (position === 'bot') {
			$(this.el).addClass('fact-panel bottom-perma-panel');
		} else {
			$(this.el).addClass('fact-panel inner-fact-panel');
		}
	},
	
	popup: function() {
		var view = new Debacle.Views.PagesPopup({
			construction: true
		});
		$('#popup_inner').html(view.render().el);
	}
});