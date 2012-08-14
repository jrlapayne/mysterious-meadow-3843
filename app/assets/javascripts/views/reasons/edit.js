Debacle.Views.ReasonsEdit = Backbone.View.extend({
	
	template: JST['reasons/edit'],
	
	events: {
		'click #topic' : 'topicShow',
		'click #reason' : 'reasonShow',
		'click #create_topic' : 'createTopic',
		'click #create_reason' : 'createReason',
		'submit #edit_reason' : 'submitReason',
		'click #plus_topic' : 'plusTopic',
		'click #minus_topic' : 'minusTopic',
		'click #plus_reason' : 'plusReason',
		'click #minus_reason' : 'minusReason',
		'click #cancel' : 'cancel'
	},
	
	render: function() {
		var that = this;
		$(this.el).html(this.template({
			topic: this.options.topic,
			reason: this.options.reason
		}));
		setTimeout(function() {that.renderLeft(); that.renderRight();}, 1);
		return this;
	},
	
	renderLeft: function() {
		this.options.reasons.sort();
		var reasons = this.options.reasons.where({topic_id: this.options.topic.get('id')});
		var attributes = {
			reasons: reasons,
			user: this.options.current_user,
			tasks: this.options.tasks,
			reason_id: this.options.reason.get('id')
		};
		$('#left').html(JST['reasons/index'](attributes));
		for (i = 0; i < reasons.length; i++) {
			if (reasons[i].get('id') === this.options.reason.get('id')) {
				$('#left').scrollTop(i * 80);
			}
		}
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
		var attributes, edit_reason;
		edit_reason = this.options.reason;
		e.preventDefault();
		attributes = {
			title: $('#reason_title').val(), 
			description: $('#reason_description').val(), 
			url1: $('#reason_url1').val(),
			url2: $('#reason_url2').val(),
			url3: $('#reason_url3').val()
		};
		edit_reason.set(attributes);
		edit_reason.save();
		Backbone.history.navigate('reason/' + edit_reason.get('id'), true);
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