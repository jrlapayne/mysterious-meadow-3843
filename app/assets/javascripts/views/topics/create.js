Debacle.Views.TopicsCreate = Backbone.View.extend({
	
	template: JST['topics/create'],
	
	events: {
		'click #topic' : 'topicShow',
		'click #create_topic' : 'createTopic',
		'submit #new_topic' : 'submitTopic',
		'click #plus_topic' : 'plusTopic',
		'click #minus_topic' : 'minusTopic',
		'click #cancel' : 'cancel'
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
		Backbone.history.navigate('topic' + $(e.target).val(), true);
	},
	
	createTopic: function() {
		Backbone.history.navigate('topic/create', true);
	},
	
	submitTopic: function(e) {
		var attributes, new_topic;
		e.preventDefault();
		attributes = {
			title: $('#new_topic_title').val(), 
			description: $('#new_topic_description').val()
		};
		new_topic = this.options.topics.create(attributes, {
			wait: true, 
			success: function() {
				Backbone.history.navigate('topic' + new_topic.get('id'), true);
			},
			error: function() {
				alert('invalid content');
			}
		});
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
	},
	
	cancel: function() {
		parent.history.back();
	}
});