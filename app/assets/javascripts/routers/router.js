Debacle.Routers.Router = Backbone.Router.extend({
	
	routes: {
		'' 		: 'pagesHome',
		'about' : 'pagesAbout',
		
		'facts:id' 			: 'factsIndex',
		'facts:id/pros' 	: 'factsPros',
		'facts:id/cons' 	: 'factsCons',
		'facts:id/intro' 	: 'factsIntro',
		'quizzes:id' 		: 'quizzesIndex',
		
		'profile' : 'usersShow'
	},
	
	initialize: function(options) {
		this.users = options.users;
		this.topics = options.topics;
		this.reasons = options.reasons;
		this.tasks = options.tasks;
		this.scorings = options.scorings;
		this.current_user = options.current_user;
		this.g_lvls = options.global_levels;
		this.t_lvls = options.topic_levels;
		this.tu_lvls = options.topic_user_levels;
		
		this.pagesHeader();
		this.miniProfile();
		this.topicsIndex();
	},
	
	signedInUser: function(user) {
		return !user.get('is_temp_user');
	},
	
	signInPopup: function() {
		alert('you must log in to access this');
	},
	
	activateHeader: function() {
		$('#header').find('div #pros').removeClass('hide');
		$('#header').find('div #cons').removeClass('hide');
		$('#header').find('div #intro').removeClass('hide');
		$('#header').find('div #quiz').removeClass('hide');
		$('#header').find('div #add').removeClass('hide');
		$('#header').find('div #pros_active').addClass('hide');
		$('#header').find('div #cons_active').addClass('hide');
		$('#header').find('div #intro_active').addClass('hide');
		$('#header').find('div #quiz_active').addClass('hide');
		$('#header').find('div #add_active').addClass('hide');
	},
	
	pagesHeader: function() {
		var view = new Debacle.Views.PagesHeader({
			
		});
		$('#header').html(view.render().el);
	},
	
	topicsIndex: function() {
		var view = new Debacle.Views.TopicsIndex({
			current_user: this.current_user,
			users: this.users,
			topics: this.topics,
			reasons: this.reasons,
			tasks: this.tasks,
			scorings: this.scorings,
			g_lvls: this.g_lvls,
			t_lvls: this.t_lvls,
			tu_lvls: this.tu_lvls
		});
		$('#right_column_bot').html(view.render().el);
	},
	
	miniProfile: function() {
		var view = new Debacle.Views.PagesMiniProfile({
			current_user: this.current_user,
			users: this.users,
			topics: this.topics,
			reasons: this.reasons,
			tasks: this.tasks,
			scorings: this.scorings,
			g_lvls: this.g_lvls,
			t_lvls: this.t_lvls,
			tu_lvls: this.tu_lvls
		});
		$('#right_column_top').html(view.render().el);
	},
	
	pagesHome: function() {
		this.activateHeader();
		var view = new Debacle.Views.PagesHome({
			current_user: this.current_user,
			users: this.users,
			topics: this.topics,
			reasons: this.reasons,
			tasks: this.tasks,
			scorings: this.scorings,
			g_lvls: this.g_lvls,
			t_lvls: this.t_lvls,
			tu_lvls: this.tu_lvls
		});
		$('#left_column').html(view.render().el);	
	},
	
	pagesAbout: function() {
		this.activateHeader();
		var view = new Debacle.Views.PagesAbout({
			current_user: this.current_user,
			users: this.users,
			topics: this.topics,
			reasons: this.reasons,
			tasks: this.tasks,
			scorings: this.scorings,
			g_lvls: this.g_lvls,
			t_lvls: this.t_lvls,
			tu_lvls: this.tu_lvls
		});
		$('#left_column').html(view.render().el);
	},
	
	factsIndex: function(id) {
		this.activateHeader();
		var view = new Debacle.Views.ReasonsIndex({
			current_user: this.current_user,
			users: this.users,
			topics: this.topics,
			facts: this.reasons.where({topic_id: parseInt(id)}),
			reasons: this.reasons,
			tasks: this.tasks,
			scorings: this.scorings,
			g_lvls: this.g_lvls,
			t_lvls: this.t_lvls,
			tu_lvls: this.tu_lvls
		});
		$('#left_column').html(view.render().el);
	},
	
	factsPros: function(id) {
		this.activateHeader();
		$('#header').find('div #pros').addClass('hide');
		$('#header').find('div #pros_active').removeClass('hide');
		var view = new Debacle.Views.ReasonsIndex({
			current_user: this.current_user,
			users: this.users,
			topics: this.topics,
			facts: this.reasons.where({topic_id: parseInt(id), is_pro: true}),
			reasons: this.reasons,
			tasks: this.tasks,
			scorings: this.scorings,
			g_lvls: this.g_lvls,
			t_lvls: this.t_lvls,
			tu_lvls: this.tu_lvls
		});
		$('#left_column').html(view.render().el);
	},
	
	factsCons: function(id) {
		this.activateHeader();
		$('#header').find('div #cons').addClass('hide');
		$('#header').find('div #cons_active').removeClass('hide');
		var view = new Debacle.Views.ReasonsIndex({
			current_user: this.current_user,
			users: this.users,
			topics: this.topics,
			facts: this.reasons.where({topic_id: parseInt(id), is_pro: false}),
			reasons: this.reasons,
			tasks: this.tasks,
			scorings: this.scorings,
			g_lvls: this.g_lvls,
			t_lvls: this.t_lvls,
			tu_lvls: this.tu_lvls
		});
		$('#left_column').html(view.render().el);
	},
	
	factsIntro: function(id) {
		this.activateHeader();
		$('#header').find('div #intro').addClass('hide');
		$('#header').find('div #intro_active').removeClass('hide');
		var view = new Debacle.Views.ReasonsIndex({
			current_user: this.current_user,
			users: this.users,
			topics: this.topics,
			facts: this.reasons.where({topic_id: parseInt(id), is_intro: true}),
			reasons: this.reasons,
			tasks: this.tasks,
			scorings: this.scorings,
			g_lvls: this.g_lvls,
			t_lvls: this.t_lvls,
			tu_lvls: this.tu_lvls
		});
		$('#left_column').html(view.render().el);
	},
	fauxQuizzesIndex: function(id) {
		if (this.signedInUser(this.current_user)) {
			this.activateHeader();
			$('#header').find('div #quiz').addClass('hide');
			$('#header').find('div #quiz_active').removeClass('hide');
			var view = new Debacle.Views.QuizzesIndex({
				current_user: this.current_user,
				users: this.users,
				topics: this.topics,
				quizzes: this.reasons.where({topic_id: parseInt(id)}),
				reasons: this.reasons,
				tasks: this.tasks,
				scorings: this.scorings,
				g_lvls: this.g_lvls,
				t_lvls: this.t_lvls,
				tu_lvls: this.tu_lvls
			});
			$('#left_column').html(view.render().el);
		} else {
			this.signInPopup();
		}
	},
	
	quizzesIndex: function(id) {
		this.activateHeader();
		$('#header').find('div #quiz').addClass('hide');
		$('#header').find('div #quiz_active').removeClass('hide');
		var view = new Debacle.Views.QuizzesIndex({
			current_user: this.current_user,
			users: this.users,
			topics: this.topics,
			quizzes: this.reasons.where({topic_id: parseInt(id), is_approved: true}),
			reasons: this.reasons,
			tasks: this.tasks,
			scorings: this.scorings,
			g_lvls: this.g_lvls,
			t_lvls: this.t_lvls,
			tu_lvls: this.tu_lvls
		});
		$('#left_column').html(view.render().el);
	},

	usersShow: function() {
		this.activateHeader();
		if (this.signedInUser(this.current_user)) {
			
		} else {
			this.signInPopup();
		}
	}
});
