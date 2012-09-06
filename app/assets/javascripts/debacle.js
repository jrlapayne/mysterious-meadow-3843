window.Debacle = {
	Models: {},
	Collections: {},
	Views: {},
	Routers: {},
	
	init: function(data) {
		this.current_user = new Debacle.Models.User(data.current_user);
		this.users = new Debacle.Collections.Users(data.users);
		this.topics = new Debacle.Collections.Topics(data.topics);
		this.reasons = new Debacle.Collections.Reasons(data.reasons);
		this.tasks = new Debacle.Collections.Tasks(data.tasks);
		this.scorings = new Debacle.Collections.Scorings(data.scorings);
		this.global_levels = new Debacle.Collections.GlobalLevels(data.global_levels);
		this.topic_levels = new Debacle.Collections.TopicLevels(data.topic_levels);
		this.topic_user_levels = new Debacle.Collections.TopicUserLevels(data.topic_user_levels);

		new Debacle.Routers.Router({
			current_user: this.current_user,
			users: this.users,
			topics: this.topics,
			reasons: this.reasons,
			tasks: this.tasks,
			scorings: this.scorings,
			global_levels: this.global_levels,
			topic_levels: this.topic_levels,
			topic_user_levels: this.topic_user_levels
		});
		this.preLoad();
		Backbone.history.start();
	},
	
	getCollections: function() {
		return {
			current_user: this.current_user,
			users: this.users,
			topics: this.topics,
			reasons: this.reasons,
			tasks: this.tasks,
			scorings: this.scorings,
			g_lvls: this.global_levels,
			t_lvls: this.topic_levels,
			tu_lvls: this.topic_user_levels
		};
	},
	
	preLoad: function() {
		for(i = 0; i < 16; i++) {
			$('<img />').attr('src', '/assets/win' + String(i + 1) + '.png');
		}
		for(i = 0; i < 23; i++) {
			$('<img />').attr('src', '/assets/fail' + String(i + 1) + '.png');
		}
	}
};