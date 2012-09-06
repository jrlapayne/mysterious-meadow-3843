Debacle.Views.TopicsIndex = Backbone.View.extend({
	
	template: JST['topics/index'],
	
	events: {
		'click #topic' : 'factsIndex'
	},
	
	render: function() {
		var that = this;
		$(this.el).html(this.template({
			
		}));
		var topics = this.options.topics;
		var i = 0;
		this.options.topics.each(function(t) {
			var position = "middle";
			if (i === 0) {
				position = "top";
			}
			if (i === topics.length - 1) {
				position = "bot";
			}
			that.appendTopic(t, position);
			i = i + 1;
		});
		return this;
	},
	
	appendTopic: function(topic, position) {
		var view = new Debacle.Views.TopicsShow({topic: topic, reasons: this.options.reasons, position: position});
		this.$('#topics').append(view.render().el);
	},
	
	factsIndex: function(event) {
		var element, topic_id;
		$('#topics').find('div #active').addClass('hide');
		$('#topics').find('div #inactive').removeClass('hide');
		$('#topics').children('div #topic').removeClass('active-topic-panel bottom-topic-panel top-topic-panel');
		$('#topics').children('div #topic').addClass('topic-panel inner-topic-panel');
			
		if ($(event.target).attr('id') === 'topic') {
			element = $(event.target);
		} else {
			element = $(event.target).closest('div #topic');
		}
		$(element).removeClass('topic-panel inner-topic-panel');
		$(element).addClass('active-topic-panel');
		$(element).prev('div #topic').removeClass('inner-topic-panel');
		$(element).prev('div #topic').addClass('bottom-topic-panel');
		$(element).next('div #topic').removeClass('inner-topic-panel');
		$(element).next('div #topic').addClass('top-topic-panel');
		$(element).children('div #inactive').addClass('hide');
		$(element).children('div #active').removeClass('hide');
		topic_id = parseInt($(element).children('li').val());
		this.renderTabs(this.options.topics.where({id: topic_id})[0]);
		var view = new Debacle.Views.XpBarsTopic({
			topic: this.options.topics.where({id: topic_id})[0],
			current_user: this.options.current_user,
			t_lvls: this.options.t_lvls,
			tu_lvls: this.options.tu_lvls,
			tasks: this.options.tasks,
			users: this.options.users
		});
		$(element).find('div #xp_bar').html(view.render().el);
		Backbone.history.navigate('facts' + topic_id + '/intro', true);
	},
	
	renderTabs: function(topic) {
		var view = new Debacle.Views.TopicsTabs({
			topic: topic
		});
		$('#tabs').html(view.render().el);
	}
});