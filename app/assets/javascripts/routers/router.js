Debacle.Routers.Router = Backbone.Router.extend({
	
	routes: {
		'' 					: 'home',
		'topic/:id' 		: 'topicShow',
		'reason/:id'		: 'reasonShow',
		'topics/new'		: 'topicCreate',
		'reasons/new/:id'	: 'reasonCreate',
		'topic/edit/:id'	: 'topicEdit',
		'reason/edit/:id'	: 'reasonEdit'
	},
	
	initialize: function(options) {
		this.users = options.users;
		this.topics = options.topics;
		this.reasons = options.reasons;
		this.tasks = options.tasks;
		this.scorings = options.scorings;
		this.current_user = this.users.create();
	},
	
	home: function() {
		var view = new Debacle.Views.PagesHome({
			topics: this.topics,
			scorings: this.scorings,
			current_user: this.current_user,
			tasks: this.tasks,
			reasons: this.reasons
		});
		$('#page').html(view.render().el);
	},
	
	topicShow: function(id) {
		var view = new Debacle.Views.TopicsShow({
			topics: this.topics,
			reasons: this.reasons,
			topic: this.topics.where({id: parseInt(id)})[0],
			scorings: this.scorings,
			current_user: this.current_user,
			tasks: this.tasks
		});
		$('#page').html(view.render().el);
	},
	
	reasonShow: function(id) {
		var view = new Debacle.Views.ReasonsShow({
			topics: this.topics,
			reasons: this.reasons,
			reason: this.reasons.where({id: parseInt(id)})[0],
			scorings: this.scorings,
			current_user: this.current_user,
			tasks: this.tasks
		});
		$('#page').html(view.render().el);
	},
	
	topicCreate: function() {
		var view = new Debacle.Views.TopicsCreate({
			topics: this.topics,
			scorings: this.scorings,
			current_user: this.current_user,
			tasks: this.tasks,
			reasons: this.reasons
		});
		$('#page').html(view.render().el);
	},
	
	reasonCreate: function(id) {
		var view = new Debacle.Views.ReasonsCreate({
			topic: this.topics.where({id: parseInt(id)})[0],
			reasons: this.reasons,
			topics: this.topics,
			scorings: this.scorings,
			current_user: this.current_user,
			tasks: this.tasks
		});
		$('#page').html(view.render().el);
	},
	
	topicEdit: function(id) {
		var view = new Debacle.Views.TopicsEdit({
			topic: this.topics.where({id: parseInt(id)})[0],
			reasons: this.reasons,
			topics: this.topics,
			scorings: this.scorings,
			current_user: this.current_user,
			tasks: this.tasks
		});
		$('#page').html(view.render().el);
	},
	
	reasonEdit: function(id) {
		var view = new Debacle.Views.ReasonsEdit({
			topic: this.topics.where({id: this.reasons.where({id: parseInt(id)})[0].get('topic_id')})[0],
			reason: this.reasons.where({id: parseInt(id)})[0],
			reasons: this.reasons,
			topics: this.topics,
			scorings: this.scorings,
			current_user: this.current_user,
			tasks: this.tasks
		});
		$('#page').html(view.render().el);
	}
});
