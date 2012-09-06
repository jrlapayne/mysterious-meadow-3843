Debacle.Views.ReasonsIndex = Backbone.View.extend({
	
	template: JST['reasons/index'],
	
	events: {
		'click #reason' : 'reasonShow'
	},
	
	render: function() {
		var that = this;
		$(this.el).html(this.template({
			
		}));
		
		for (i = 0; i < this.facts.length; i++) {
			var position = "middle";
			if (i === 0) {
				position = "top";
			}
			if (i === that.facts.length - 1) {
				position = "bot";
			}
			that.appendReason(that.facts[i], position);
		}
		return this;
	},
	
	initialize: function() {
		this.current_user = this.options.current_user;
		this.users = this.options.users;
		this.topics = this.options.topics;
		this.reasons = this.options.reasons;
		this.facts = this.options.facts;
		this.tasks = this.options.tasks;
		this.scorings = this.options.scorings;
		this.g_lvls = this.options.g_lvls;
		this.t_lvls = this.options.t_lvls;
		this.tu_lvls = this.options.tu_lvls;
	},
	
	appendReason: function(reason, position) {
		var sum = this.getSum(this.scorings.where({reason_id: reason.get('id')}));
		var view = new Debacle.Views.ReasonsShow({reason: reason, position: position, sum: sum});
		this.$('#reasons').append(view.render().el);
	},
	
	getSum: function(scorings) {
		var sum = 0;

		return sum;
	},
	
	reasonShow: function(event) {
		var element;
		$('#reasons').find('div #active').addClass('hide');
		$('#reasons').find('div #inactive').removeClass('hide');
		$('#reasons').children('div #reason').removeClass('active-fact-panel bottom-fact-panel top-fact-panel');
		$('#reasons').children('div #reason').addClass('fact-panel inner-fact-panel');
		if ($(event.target).attr('id') === 'reason') {
			element = $(event.target);
		} else {
			element = $(event.target).closest('div #reason');
		}
		$(element).removeClass('fact-panel inner-fact-panel');
		$(element).addClass('active-fact-panel');
		$(element).prev('div #reason').removeClass('inner-fact-panel');
		$(element).prev('div #reason').addClass('bottom-fact-panel');
		$(element).next('div #reason').removeClass('inner-fact-panel');
		$(element).next('div #reason').addClass('top-fact-panel');
		$(element).children('div #inactive').addClass('hide');
		$(element).children('div #active').removeClass('hide');
		
		var tasks = this.tasks;
		var current_user = this.current_user;
		var reason = this.reasons.where({id: parseInt($(element).children('li').val())})[0];
		var topic = this.topics.where({id: reason.get('topic_id')})[0];
		
		if (!tasks.where({user_id: current_user.get('id'), reason_id: reason.get('id'), is_quiz: false})[0]) {
			tasks.createReasonTask(current_user.get('id'), reason.get('id'), topic.get('id'));
			this.users.addXp(current_user, this.g_lvls, 10);
			this.tu_lvls.addOrUpdate(current_user, topic, this.t_lvls, 10);
		}
	}
});