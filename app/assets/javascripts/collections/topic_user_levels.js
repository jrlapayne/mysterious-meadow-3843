Debacle.Collections.TopicUserLevels = Backbone.Collection.extend({

	model: Debacle.Models.TopicUserLevel,
	url: 'topic_user_levels',
	
	addOrUpdate: function(user, topic, levels, points) {
		var tu_lvl, level, leveled_up = false;
		
		if (this.where({user_id: user.get('id'), topic_id: topic.get('id')})[0]) {
			tu_lvl = this.where({user_id: user.get('id'), topic_id: topic.get('id')})[0];
			level = levels.where({level: tu_lvl.get('level')})[0];

			if (tu_lvl.get('points') + points >= level.get('xp_req') && levels.where({level: level.get('level') + 1})[0]) {
				tu_lvl.set({points: tu_lvl.get('points') + points - level.get('xp_req'), level: tu_lvl.get('level') + 1});
				leveled_up = true;
			} else {
				tu_lvl.set({points: tu_lvl.get('points') + points});
			}
			tu_lvl.save();
		} else {
			this.create({user_id: user.get('id'), topic_id: topic.get('id'), level: 1, points: points});
		}
		
		if (leveled_up) {
			this.levelUp(user, topic);
		}
	},
	
	levelUp: function(user, topic) {
		var view = new Debacle.Views.PagesPopup({
			current_user: user,
			topic: topic,
			tu_lvls: this
		});
		$('#popup_inner').html(view.render().el);
	}
});
