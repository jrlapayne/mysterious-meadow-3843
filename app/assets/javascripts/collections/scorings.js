Debacle.Collections.Scorings = Backbone.Collection.extend({
	
	model: Debacle.Models.Scoring,
	url: 'scorings',
	
	newVote: function(reason, value, user) {
		this.create({reason_id: reason.get('id'), vote: value, user_id: user.get('id')});
		reason.set({score: reason.get('score') + value});
		reason.save();
	}
});
