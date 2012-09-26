Debacle.Views.ReasonsIndex = Backbone.View.extend({
	
	template: JST['reasons/index'],
	
	events: {
		'click .heyareason' : 'reasonShow'
	},
	
	render: function() {
		var fact = this.options.facts[0];
		var reasons = this.reasons;
		var facts;
		if (fact.get('is_intro') === true) {
			facts = reasons.where({topic_id: fact.get('topic_id'), is_intro: true});
		} else if (fact.get('is_pro') === true) {
			facts = reasons.where({topic_id: fact.get('topic_id'), is_pro: true});
		} else {
			facts = reasons.where({topic_id: fact.get('topic_id'), is_pro: false});
		}
		var that = this;
		this.facts = facts;
		$(this.el).html(this.template({
			
		}));
		
		for (i = 0; i < facts.length; i++) {
			var position = "middle";
			if (i === 0) {
				position = "top";
			}
			if (i === facts.length - 1) {
				position = "bot";
			}
			that.appendReason(facts[i], position);
		}
		return this;
	},
	
	initialize: function() {
		this.current_user = this.options.current_user;
		this.users = this.options.users;
		this.topics = this.options.topics;
		this.reasons = this.options.reasons;
		this.tasks = this.options.tasks;
		this.scorings = this.options.scorings;
		this.g_lvls = this.options.g_lvls;
		this.t_lvls = this.options.t_lvls;
		this.tu_lvls = this.options.tu_lvls;
		this.edits = this.options.edits;
		
		this.reasons.on('reset', this.render, this);
	},
	
	appendReason: function(reason, position) {
		var sum = this.getSum(this.scorings.where({reason_id: reason.get('id')}));
		var view = new Debacle.Views.ReasonsShow({
			reason: reason, 
			position: position, 
			sum: sum, 
			scorings: this.scorings,
			current_user: this.current_user,
			reasons: this.reasons,
			facts: this.facts,
			users: this.users,
			edits: this.edits
		});
		this.$('#reasons').append(view.render().el);
	},
	
	getSum: function(scorings) {
		var sum = 0;

		return sum;
	},
	
	reasonShow: function(event) {
		var case1, case2;
		case1 = ($(event.target).attr('id') === 'edit' || $(event.target).closest('div #edit_fact').hasClass('editting'));
		case2 = ($(event.target).attr('id') !== 'submit_update' && $(event.target).attr('id') !== 'cancel_update');
		if (case1 && case2) {
			return;
		}
		var element;
		$('#reasons').find('div #active').addClass('hide');
		$('#reasons').find('div #inactive').removeClass('hide');
		$('#reasons').children('div #reason').removeClass('active-fact-panel bottom-fact-panel top-fact-panel');
		$('#reasons').children('div #reason').addClass('fact-panel inner-fact-panel');
		if ($(event.target).hasClass('heyareason')) {
			element = $(event.target);
		} else {
			element = $(event.target).closest('div .heyareason');
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
		var reason = this.reasons.where({id: parseInt($(element).attr('id'))})[0];
		var topic = this.topics.where({id: reason.get('topic_id')})[0];
		
		if (!tasks.where({user_id: current_user.get('id'), reason_id: reason.get('id'), is_quiz: false})[0]) {
			tasks.createReasonTask(current_user.get('id'), reason.get('id'), topic.get('id'));
			this.users.addXp(current_user, this.g_lvls, 10);
			this.tu_lvls.addOrUpdate(current_user, topic, this.t_lvls, 10);
		}
	}
});