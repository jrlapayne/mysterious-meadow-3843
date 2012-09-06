Debacle.Collections.Users = Backbone.Collection.extend({

	model: Debacle.Models.User,
	url: 'users',
	
	addXp: function(current_user, levels ,points) {
		var user = this.where({id: current_user.get('id')})[0];
		var level = levels.where({level: user.get('level')})[0];
		var leveled_up = false; 
		
		if (user.get('xp') + points >= level.get('xp_req') && levels.where({level: level.get('level') + 1})[0]) {
			user.set({xp: user.get('xp') + points - level.get('xp_req'), level: user.get('level') + 1});
			leveled_up = true;
		} else {
			user.set({xp: user.get('xp') + points});
		}	
		user.save();
		
		if (leveled_up) {
			this.levelUp(current_user);
		}	
	},
	
	levelUp: function(user) {
		var current_user = this.where({id: user.get('id')})[0];
		var view = new Debacle.Views.PagesPopup({
			current_user: current_user
		});
		$('#popup_inner').html(view.render().el);
		var view_two = new Debacle.Views.UsersLevel({
			level: current_user.get('level')
		});
		$('#level').html(view_two.render().el);
	}
});
