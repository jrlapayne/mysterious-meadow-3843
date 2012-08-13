window.Debacle = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  init: function(data) {
	this.users = new Debacle.Collections.Users(data.users);
	this.topics = new Debacle.Collections.Topics(data.topics);
	this.reasons = new Debacle.Collections.Reasons(data.reasons);
	this.tasks = new Debacle.Collections.Tasks(data.tasks);
	this.scorings = new Debacle.Collections.Scorings(data.scorings);
	
	new Debacle.Routers.Router({
		users: this.users,
		topics: this.topics,
		reasons: this.reasons,
		tasks: this.tasks,
		scorings: this.scorings
	});
	Backbone.history.start();
  }
};