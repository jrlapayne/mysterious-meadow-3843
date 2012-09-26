Debacle.Views.ReasonsEdit = Backbone.View.extend({
	
	template: JST['reasons/edit'],
	
	events: {
		'submit #edit_reason' : 'submitReason'
	},
	
	render: function() {
		var that = this;
		$(this.el).html(this.template({
			reason: this.options.reason
		}));
		setTimeout(function() {}, 1);
		return this;
	},
	
	submitReason: function(event) {
		var is_intro, is_pro;
		var reason = this.options.reason;
		event.preventDefault();
		
		if($('#pro').attr('checked')) {
			is_pro = true;
			is_intro = null;
		} else if ($('#con').attr('checked')) {
			is_pro = false;
			is_intro = null;
		} else if ($('#intro').attr('checked')) {
			is_pro = null;
			is_intro = true;
		}
		
		this.options.edits.create({
			topic_id: reason.get('topic_id'),
			reason_id: reason.get('id'),
			title: $('#title').val(),
			description: $('#description').val(),
			url1: $('#url1').val(),
			url2: $('#url2').val(),
			url3: $('#url3').val(),
			question: $('#question').val(),
			correct: $('#correct').val(),
			wrong1: $('#wrong1').val(),
			wrong2: $('#wrong2').val(),
			wrong3: $('#wrong3').val(),
			wrong4: $('#wrong4').val(),
			is_intro: is_intro,
			is_pro: is_pro,
			user_id: this.options.current_user.get('id')
		});
		
		reason.set({
			title: $('#title').val(),
			description: $('#description').val(),
			url1: $('#url1').val(),
			url2: $('#url2').val(),
			url3: $('#url3').val(),
			question: $('#question').val(),
			correct: $('#correct').val(),
			wrong1: $('#wrong1').val(),
			wrong2: $('#wrong2').val(),
			wrong3: $('#wrong3').val(),
			wrong4: $('#wrong4').val(),
			is_intro: is_intro,
			is_pro: is_pro
		});
		reason.save();
		
		this.updateReason(reason);
		$('#reasons').find('div #edit_fact').removeClass('editting');
		$(this.el).closest('div #active').removeClass('hide');
		$(this.el).remove();
	},
	
	updateReason: function(reason) {
		var elements, element;
		
		elements = $('div #reason').get();
		for (i = 0; i < elements.length; i++) {
			if (parseInt($(elements[i]).children('li').val()) === reason.get('id')) {
				element = elements[i];
			}
		}
		
		$(element).children('div #inactive').children().remove();
		$(element).children('div #active').children().remove();
		
		$(element).children('div #inactive').html(JST['reasons/updated_inactive']({reason: reason}));
		$(element).children('div #active').html(JST['reasons/updated_active']({reason: reason}));
		
		this.renderInactiveScore(element);
		this.renderActiveScore(element);
	},
	
	renderInactiveScore: function(element) {
		var view = new Debacle.Views.ReasonsScore({
			reason: this.options.reason,
			reasons: this.options.reasons
		});
		$(element).find('#inactive').find('#score').html(view.render().el);
	},
	
	renderActiveScore: function(element) {
		var view = new Debacle.Views.ReasonsScore({
			reason: this.options.reason,
			reasons: this.options.reasons
		});
		$(element).find('#active').find('#score').html(view.render().el);
	}
});