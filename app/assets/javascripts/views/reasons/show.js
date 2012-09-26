Debacle.Views.ReasonsShow = Backbone.View.extend({
	
	template: JST['reasons/show'],
	
	events: {
		'click #upvote' : 'checkUpVotes',
		'click #downvote' : 'checkDownVotes',
		'click #edit' : 'reasonEdit',
		'click #comments_button' : 'reasonComments'
	},
	
	render: function() {
		var that = this;
		$(this.el).addClass('heyareason lookatme');
		$(this.el).attr('id', this.options.reason.get('id'));
		this.setClass(this.options.position);
		$(this.el).html(this.template({
			reason: this.options.reason
		}));
		setTimeout(function() {
			that.renderInactiveScore();
			that.renderActiveScore();
		}, 1);
		return this;
	},
	
	renderInactiveScore: function() {
		var view = new Debacle.Views.ReasonsScore({
			reason: this.options.reason,
			reasons: this.options.reasons
		});
		$(this.el).find('#inactive').find('#score').html(view.render().el);
	},
	
	renderActiveScore: function() {
		var view = new Debacle.Views.ReasonsScore({
			reason: this.options.reason,
			reasons: this.options.reasons
		});
		$(this.el).find('#active').find('#score').html(view.render().el);
	},
	
	setClass: function(position) {
		if (position === 'top') {
			$(this.el).addClass('fact-panel top-perma-panel');
		} else if (position === 'bot') {
			$(this.el).addClass('fact-panel bottom-perma-panel');
		} else {
			$(this.el).addClass('fact-panel inner-fact-panel');
		}
	},
	
	popup: function() {
		var view = new Debacle.Views.PagesPopup({
			construction: true
		});
		$('#popup_inner').html(view.render().el);
	},
	
	checkUpVotes: function() {
		var current_user = this.options.users.where({id: this.options.current_user.get('id')})[0];
		if (current_user.get('votes') > 0) {
			this.upvote();
			current_user.set({votes: current_user.get('votes') - 1});
			current_user.save();
		} else {
			var view = new Debacle.Views.PagesPopup({
				construction: false
			});
			$('#popup_inner').html(view.render().el);
		}	
	},
	
	checkDownVotes: function() {
		var current_user = this.options.users.where({id: this.options.current_user.get('id')})[0];
		if (current_user.get('votes') > 0) {
			this.downvote();
			current_user.set({votes: current_user.get('votes') - 1});
			current_user.save();
		} else {
			var view = new Debacle.Views.PagesPopup({
				construction: false
			});
			$('#popup_inner').html(view.render().el);
		}	
	},
	
	upvote: function() {
		this.options.scorings.newVote(this.options.reason, 1, this.options.current_user);
		this.orderChange();
		var element = $(this.el).find('#active').find('#score');
		$(element).addClass('voted-3');
		$(element).find('span').addClass('boldme');
		setTimeout(function() {
			$(element).removeClass('voted-3');
			$(element).addClass('voted-2');
		}, 75);
		setTimeout(function() {
			$(element).removeClass('voted-2');
			$(element).addClass('voted-1');
		}, 150);
		setTimeout(function() {
			$(element).removeClass('voted-1');
			$(element).find('span').removeClass('boldme');
		}, 225);
	},
	
	downvote: function() {
		this.options.scorings.newVote(this.options.reason, -1, this.options.current_user);
		this.orderChange();
		var element = $(this.el).find('#active').find('#score');
		$(element).addClass('voted-3');
		$(element).find('span').addClass('boldme');
		setTimeout(function() {
			$(element).removeClass('voted-3');
			$(element).addClass('voted-2');
		}, 75);
		setTimeout(function() {
			$(element).removeClass('voted-2');
			$(element).addClass('voted-1');
		}, 150);
		setTimeout(function() {
			$(element).removeClass('voted-1');
			$(element).find('span').removeClass('boldme');
		}, 225);
	},
	
	orderChange: function() {
		var facts = this.options.facts;
		var reason = this.options.reasons.where({id: this.options.reason.get('id')})[0];
		var loc;
		var that = this
		
		for (i = 0; i < facts.length; i++) {
			if (facts[i].get('id') === reason.get('id')) {
				loc = i;
			}
		}
		
		if (loc !== 0 && reason.get('score') > facts[loc - 1].get('score')) {
			this.options.reasons.sort();
			setTimeout(function() {
				that.rerenderActive(reason.get('id'));
			}, 1);
		}
		
		if (loc !== facts.length - 1 && reason.get('score') < facts[loc + 1].get('score')) {
			this.options.reasons.sort();
			setTimeout(function() {
				that.rerenderActive(reason.get('id'));
			}, 1);
		}
	},
	
	rerenderActive: function(id) {
		var elements, element, score_ele;
		
		elements = $('div #reason').get();
		for (i = 0; i < elements.length; i++) {
			if (parseInt($(elements[i]).children('li').val()) === id) {
				element = elements[i];
			}
		}
		
		$(element).removeClass('fact-panel inner-fact-panel');
		$(element).addClass('active-fact-panel');
		$(element).prev('div #reason').removeClass('inner-fact-panel');
		$(element).prev('div #reason').addClass('bottom-fact-panel');
		$(element).next('div #reason').removeClass('inner-fact-panel');
		$(element).next('div #reason').addClass('top-fact-panel');
		$(element).children('div #inactive').addClass('hide');
		$(element).children('div #active').removeClass('hide');
		
		var score_ele = $(element).find('#active').find('#score');
		$(score_ele).addClass('voted-3');
		$(score_ele).find('span').addClass('boldme');
		setTimeout(function() {
			$(score_ele).removeClass('voted-3');
			$(score_ele).addClass('voted-2');
		}, 75);
		setTimeout(function() {
			$(score_ele).removeClass('voted-2');
			$(score_ele).addClass('voted-1');
		}, 150);
		setTimeout(function() {
			$(score_ele).removeClass('voted-1');
			$(score_ele).find('span').removeClass('boldme');
		}, 225);
	},
	
	reasonEdit: function(event) {
		var element, elements; 
		var reason = this.options.reasons.where({id: parseInt($(event.target).val())})[0];
		var view = new Debacle.Views.ReasonsEdit({
			reason: reason, 
			current_user: this.options.users.where({id: this.options.current_user.get('id')})[0],
			edits: this.options.edits,
			reasons: this.options.reasons
		});
		elements = $('div #reason').get();
		for (i = 0; i < elements.length; i++) {
			if (parseInt($(elements[i]).children('li').val()) === reason.get('id')) {
				element = elements[i];
			}
		}
		$(element).children('div #active').addClass('hide');
		$(element).children('div #edit_fact').addClass('editting');
		$(element).children('div #edit_fact').html(view.render().el);
	},
	
	reasonComments: function(event) {
		var element = $(event.target).closest('div #reason');
		var reason = this.options.reasons.where({id: parse($(element).children('li').val())})[0];
		var view = new Debacle.Views.CommentsIndex({
			comments: this.options.comments.where({reason_id: reason.get('id')})[0],
			users: this.options.users,
			current_user: this.options.current_user
		});
		$(element).find('div #comments').html(view.render().el);
	}
});