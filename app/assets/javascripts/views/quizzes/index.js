Debacle.Views.QuizzesIndex = Backbone.View.extend({
	
	template: JST['quizzes/index'],
	id: 'quiz_questions',
	
	events: {
		'click #quiz' : 'quizShow',
		'click #answer' : 'quizAnswered'
	},
	
	render: function() {
		var that = this;
		$(this.el).html(this.template({
			
		}));
		for (i = 0; i < this.options.quizzes.length; i++) {
			var position = "middle", icon = "ques", task;
			if (i === 0) {
				position = "top";
			}
			if (i === that.options.quizzes.length - 1) {
				position = "bot";
			}
			if (that.options.tasks.where({user_id: that.options.current_user.get('id'), reason_id: that.options.quizzes[i].get('id'), is_quiz: true})[0]) {
				task = that.options.tasks.where({user_id: that.options.current_user.get('id'), reason_id: that.options.quizzes[i].get('id'), is_quiz: true})[0];
				if (task.get('answer') === 'correct') {
					icon = "check";
				} else {
					icon = "x";
				}
			}
			that.appendQuiz(that.options.quizzes[i], position, icon);
		}
		return this;
	},
	
	appendQuiz: function(quiz, position, icon) {
		var view = new Debacle.Views.QuizzesShow({quiz: quiz, position: position, icon: icon});
		$(this.el).append(view.render().el);
	},
	
	quizShow: function(event) {
		var tasks = this.options.tasks;
		var current_user = this.options.current_user;
		var task, element;
		if ($(event.target).hasClass('answer-button')) {
			var id = parseInt($(event.target).val().split(' ')[1]);
			var elements = $('div #quiz').get();
			for (i = 0; i < elements.length; i++) {
				if (parseInt($(elements[i]).children('li').val()) === id) {
					$(elements[i]).removeClass('active-question-panel');
					$(elements[i]).addClass('active-answered-question-panel');
				}
			}
		} else {
			$('#quiz_questions').find('div #active').addClass('hide');
			$('#quiz_questions').find('div #inactive').removeClass('hide');
			$('#quiz_questions').find('div #answers').children().remove();
			$('#quiz_questions').children('div #quiz').removeClass('active-answered-question-panel active-question-panel bottom-fact-panel top-fact-panel');
			$('#quiz_questions').children('div #quiz').addClass('question-panel inner-fact-panel');
			if ($(event.target).attr('id') === 'quiz') {
				element = $(event.target);
			} else {
				element = $(event.target).closest('div #quiz');
			}
			var quiz = this.options.reasons.where({id: parseInt($(element).children('li').val())})[0];
		
			$(element).removeClass('question-panel inner-fact-panel');
			$(element).prev('div #quiz').removeClass('inner-fact-panel');
			$(element).prev('div #quiz').addClass('bottom-fact-panel');
			$(element).next('div #quiz').removeClass('inner-fact-panel');
			$(element).next('div #quiz').addClass('top-fact-panel');
			$(element).children('div #inactive').addClass('hide');
			$(element).children('div #active').removeClass('hide');
			if (tasks.where({user_id: current_user.get('id'), reason_id: quiz.get('id'), is_quiz: true})[0]) {
				task = tasks.where({user_id: current_user.get('id'), reason_id: quiz.get('id'), is_quiz: true})[0];
				$(element).addClass('active-answered-question-panel');
				this.renderAnswered(task.get('reason_id'), task.get('answer'));
			} else {
				$(element).addClass('active-question-panel');
				this.renderAnswers(element, quiz);
			}
		}
	},
	
	quizAnswered: function(event) {
		var value = $(event.target).val();
		var id = parseInt(value.split(' ')[0]);
		var answer = value.substr(value.indexOf(" ") + 1);
		var quiz = this.options.reasons.where({id: id})[0];
		
		$(event.target).parents('div #quiz').removeClass('active-question-panel');
		$(event.target).parents('div #quiz').addClass('active-answered-question-panel');
		if (answer === quiz.get('correct')) {
			this.setQuizTask(quiz, 'correct');
		}
		if (answer === quiz.get('wrong1')) {
			this.setQuizTask(quiz, 'wrong1');
		}
		if (answer === quiz.get('wrong2')) {
			this.setQuizTask(quiz, 'wrong2');
		}
		if (answer === quiz.get('wrong3')) {
			this.setQuizTask(quiz, 'wrong3');
		}
		if (answer === quiz.get('wrong4')) {
			this.setQuizTask(quiz, 'wrong4');
		}
	},
	
	renderAnswers: function(element, quiz) {
		var view = new Debacle.Views.QuizzesAnswers({quiz: quiz});
		$(element).find('div #answers').html(view.render().el);
	},
	
	renderAnswered: function(id, answer) {
		var correct, elements, element;
		
		if (answer === 'correct') {
			correct = true;
		} else {
			correct = false;
		}
		elements = $('div #quiz').get();
		for (i = 0; i < elements.length; i++) {
			if (parseInt($(elements[i]).children('li').val()) === id) {
				element = elements[i];
			}
		} 
		var view = new Debacle.Views.QuizzesAnswered({quiz: this.options.reasons.where({id: id})[0], is_correct: correct});
		if (correct) {
			$(element).find('div #icon_loc').html('<div class = "checkmark-text">&#x2713;</div>');
		} else {
			$(element).find('div #icon_loc').html('<div class = "x-text">&#x2717;</div>');	
		}
		$(element).find('div #answers').html(view.render().el);
	},
	
	setQuizTask: function(quiz, answer) {
		var tasks = this.options.tasks;
		var current_user = this.options.current_user;
		var topic = this.options.topics.where({id: quiz.get('topic_id')})[0];
		var task;

		if (!tasks.where({user_id: current_user.get('id'), reason_id: quiz.get('id'), is_quiz: true})[0]) {
			if (answer === 'correct') {
				tasks.createQuizTask(current_user.get('id'), quiz.get('id'), topic.get('id'), answer);
				this.options.users.addXp(current_user, this.options.g_lvls, 20);
				this.options.tu_lvls.addOrUpdate(current_user, topic, this.options.t_lvls, 20);
			} else {
				tasks.createQuizTask(current_user.get('id'), quiz.get('id'), topic.get('id'), answer);
			}
		}
		this.renderAnswered(quiz.get('id'), answer);
	}
});