Debacle.Views.ReasonsCreate = Backbone.View.extend({
	
	template: JST['reasons/create'],
	
	events: {
		'click #topic' : 'topicShow',
		'click #reason' : 'reasonShow',
		'click #create_topic' : 'createTopic',
		'click #create_reason' : 'createReason',
		'submit #new_reason' : 'submitReason',
		'click #plus_topic' : 'plusTopic',
		'click #minus_topic' : 'minusTopic',
		'click #plus_reason' : 'plusReason',
		'click #minus_reason' : 'minusReason',
		'click #cancel' : 'cancel'
	},
	
	render: function() {
		var that = this;
		$(this.el).html(this.template({
			topic: this.options.topic
		}));
		setTimeout(function() {that.renderLeft(); that.renderRight();}, 1);
		return this;
	},
	
	renderLeft: function() {
		this.options.reasons.sort();
		var attributes = {
			reasons: this.options.reasons.where({topic_id: this.options.topic.get('id')}),
			user: this.options.current_user,
			tasks: this.options.tasks,
			reason_id: null
		};
		$('#left').html(JST['reasons/index'](attributes));
	},
	
	renderRight: function() {
		this.options.topics.sort();
		var attributes = {
			topics: this.options.topics, 
			user: this.options.current_user, 
			tasks: this.options.tasks, 
			reasons: this.options.reasons,
			topic_id: this.options.topic.get('id')
		};
		$('#right').html(JST['topics/index'](attributes));
	},
	
	topicShow: function(e) {
		Backbone.history.navigate('topic/' + $(e.target).val(), true);
	},
	
	reasonShow: function(e) {
		Backbone.history.navigate('reason/' + $(e.target).val(), true)
	},
	
	createTopic: function() {
		Backbone.history.navigate('topics/new', true);
	},
	
	createReason: function() {
		Backbone.history.navigate('reasons/new/' + this.options.topic.get('id'), true);
	},
	
	submitReason: function(e) {
		var attributes, new_reason;
		e.preventDefault();
		attributes = {
			topic_id: this.options.topic.get('id'),
			title: $('#new_reason_title').val(), 
			description: $('#new_reason_description').val(), 
			url1: $('#new_reason_url1').val(),
			url2: $('#new_reason_url2').val(),
			url3: $('#new_reason_url3').val()
		};
		new_reason = this.options.reasons.create(attributes, {
			wait: true,
			success: function() {
				Backbone.history.navigate('reason/' + new_reason.get('id'), true);
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
	
	plusReason: function(e) {
		var scorings = this.options.scorings;
		var reasons = this.options.reasons;
		var reason;
		
		if (isNaN(parseInt($(e.target).val()))) {
			reason = reasons.where({id: parseInt($(e.target).parent().val())})[0];
		} else {
			reason = reasons.where({id: parseInt($(e.target).val())})[0];
		}
		scorings.create({reason_id: reason.get('id'), vote: 1});
		reasons.setScore(reason, scorings);
		this.renderLeft();
	},
	
	minusReason: function(e) {
		var scorings = this.options.scorings;
		var reasons = this.options.reasons;
		var reason;
		
		if (isNaN(parseInt($(e.target).val()))) {
			reason = reasons.where({id: parseInt($(e.target).parent().val())})[0];
		} else {
			reason = reasons.where({id: parseInt($(e.target).val())})[0];
		}
		scorings.create({reason_id: reason.get('id'), vote: -1});
		reasons.setScore(reason, scorings);
		this.renderLeft();
	},
	
	cancel: function() {
		parent.history.back();
	}
});