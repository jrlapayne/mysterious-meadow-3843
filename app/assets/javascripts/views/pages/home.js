Debacle.Views.PagesHome = Backbone.View.extend({

	template: JST['pages/home'],
	
	events: {
		'click #topic' : 'topicShow',
		'click #create_topic' : 'createTopic',
		'click #plus_topic' : 'plusTopic',
		'click #minus_topic' : 'minusTopic'
	},
	
	render: function() {
		var that = this;
		$(this.el).html(this.template({
			
		}));
		setTimeout(function() {that.renderRight();}, 1);
		return this;
	},
	
	renderRight: function() {
		var attributes = {
			topics: this.options.topics, 
			user: this.options.current_user, 
			tasks: this.options.tasks, 
			reasons: this.options.reasons,
			topic_id: null
		};
		$('#right').html(JST['topics/index'](attributes));
	},
	
	topicShow: function(e) {
		Backbone.history.navigate('topic/' + $(e.target).val(), true);
	},
	
	createTopic: function() {
		Backbone.history.navigate('topics/new', true);
	},
	
	plusTopic: function(e) {
		var scorings = this.options.scorings;
		var topics = this.options.topics;
		var topic = topics.where({id: parseInt($(e.target).val())})[0];
		
		scorings.create({topic_id: topic.get('id'), vote: 1});
		topics.setScore(topic, scorings);
		this.renderRight();
	},
	
	minusTopic: function(e) {
		var scorings = this.options.scorings;
		var topics = this.options.topics;
		var topic = topics.where({id: parseInt($(e.target).val())})[0];
		
		scorings.create({topic_id: topic.get('id'), vote: -1});
		topics.setScore(topic, scorings);
		this.renderRight();
	}
});