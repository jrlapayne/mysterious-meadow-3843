Debacle.Views.QuizzesAnswered = Backbone.View.extend({

	template: JST['quizzes/answered'],
	
	events: {
		
	},
	
	render: function() {
		$(this.el).html(this.template({
			quiz: this.options.quiz,
			is_correct: this.options.is_correct
		}));
		return this;
	}
});