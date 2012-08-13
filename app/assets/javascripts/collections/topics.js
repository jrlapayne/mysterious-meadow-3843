Debacle.Collections.Topics = Backbone.Collection.extend({

	model: Debacle.Models.Topic,
	url: 'topics',
	
	comparator: function(topic) {
		return - topic.get('score');
	},
	
	setScore: function(topic, scorings) {
		var score = 0;
		scorings.each(function(s) {
			if (s.get('topic_id') === topic.get('id')) {
				score = score + s.get('vote');
			}
		});
		topic.set({score: score});
		topic.save();
		this.sort();
	}
});
