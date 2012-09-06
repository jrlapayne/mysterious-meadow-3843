Debacle.Views.QuizzesAnswers = Backbone.View.extend({

	template: JST['quizzes/answers'],
	
	events: {
	
	},
	
	render: function() {
		$(this.el).html(this.template({
			quiz: this.options.quiz,
			answers: this.getAnswers(this.options.quiz)
		}));
		return this;
	},
	
	getAnswers: function(quiz) {
		var answers = [];
		
		answers.push(quiz.get('correct'));
		answers.push(quiz.get('wrong1'));
		if (quiz.get('wrong2') && quiz.get('wrong2') !== "") {
			answers.push(quiz.get('wrong2'));
		}
		if (quiz.get('wrong3') && quiz.get('wrong3') !== "") {
			answers.push(quiz.get('wrong3'));
		}
		if (quiz.get('wrong4') && quiz.get('wrong4') !== "") {
			answers.push(quiz.get('wrong4'));
		}
		this.answers = _.shuffle(answers);
		
		return this.answers;
	}
});