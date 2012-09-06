Debacle.Collections.Tasks = Backbone.Collection.extend({

	model: Debacle.Models.Task,
	url: 'tasks',
	
	createReasonTask: function(user_id, reason_id, topic_id) {
		this.create({
			user_id: user_id, 
			reason_id: reason_id,
			topic_id: topic_id, 
			is_quiz: false,
			score: 10 
		});
	},
	
	createQuizTask: function(user_id, reason_id, topic_id, answer) {
		var points = 20;
		
		if (answer !== 'correct') {
			points = 0;
		}
		this.create({
			user_id: user_id, 
			reason_id: reason_id,
			topic_id: topic_id, 
			is_quiz: true,
			answer: answer,
			score: points 
		});
	}
});
