Debacle.Collections.Reasons = Backbone.Collection.extend({

	model: Debacle.Models.Reason,
	url: 'reasons',
	
	comparator: function(reason) {
		return - reason.get('score');
	},
	
	setScore: function(reason, scorings) {
		var score = 0;
		scorings.each(function(s) {
			if (s.get('reason_id') === reason.get('id')) {
				score = score + s.get('vote');
			}
		});
		reason.set({score: score});
		reason.save();
		this.sort();
	}
});
