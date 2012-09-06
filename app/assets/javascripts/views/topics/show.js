Debacle.Views.TopicsShow = Backbone.View.extend({
	
	template: JST['topics/show'],
	id: 'topic',
	
	events: {
		
	},
	
	render: function() {
		this.setClass(this.options.position);
		$(this.el).html(this.template({
			topic: this.options.topic,
			reasons: this.options.reasons
		}));
		return this;
	},
	
	setClass: function(position) {
		if (position === 'top') {
			$(this.el).addClass('topic-panel top-panel-topic');
		} else if (position === 'bot') {
			$(this.el).addClass('topic-panel bottom-panel-topic');
		} else {
			$(this.el).addClass('topic-panel inner-topic-panel');
		}
	}
});