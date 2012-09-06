Debacle.Views.QuizzesShow = Backbone.View.extend({
	
	template: JST['quizzes/show'],
	id: 'quiz',
	
	events: {
		
	},
	
	render: function() {
		this.setClass(this.options.position);
		$(this.el).html(this.template({
			quiz: this.options.quiz,
			icon: this.options.icon
		}));
		return this;
	},
	
	setClass: function(position) {
		if (position === 'top') {
			$(this.el).addClass('question-panel top-perma-panel');
		} else if (position === 'bot') {
			$(this.el).addClass('question-panel bottom-perma-panel');
		} else {
			$(this.el).addClass('question-panel inner-fact-panel');
		}
	}
});