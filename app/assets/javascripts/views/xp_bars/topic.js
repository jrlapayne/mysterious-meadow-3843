Debacle.Views.XpBarsTopic = Backbone.View.extend({
	
	template: JST['xp_bars/topic'],
	
	events: {
		
	},
	
	render: function() {
		var level;
		if (this.options.tu_lvls.where({user_id: this.options.current_user.get('id'), topic_id: this.options.topic.get('id')})[0]) {
			level = this.options.tu_lvls.where({user_id: this.options.current_user.get('id'), topic_id: this.options.topic.get('id')})[0].get('level') + 1;
		} else {
			level = 2;
		}
		$(this.el).html(this.template({
			width: this.getWidth(),
			level: level
		}));
		return this;
	},
	
	initialize: function() {
		this.level = this.options.tu_lvls
		this.options.tu_lvls.on('change', this.render, this);
		this.options.tu_lvls.on('add', this.render, this);
	},
	
	getWidth: function() {
		var topic = this.options.topic;
		var user = this.options.current_user;
		var tu_lvl, t_lvl, width;
		
		if (this.options.tu_lvls.where({user_id: user.get('id'), topic_id: topic.get('id')})[0]) {
			tu_lvl = this.options.tu_lvls.where({user_id: user.get('id'), topic_id: topic.get('id')})[0];
			t_lvl = this.options.t_lvls.where({level: tu_lvl.get('level')})[0];
			width = Math.round(100 * (tu_lvl.get('points') / t_lvl.get('xp_req')));
		} else {
			width = 0;
		}
		return width;
	}
});