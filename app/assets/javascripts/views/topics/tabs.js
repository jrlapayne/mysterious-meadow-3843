Debacle.Views.TopicsTabs = Backbone.View.extend({
	
	template: JST['topics/tabs'],
	
	events: {
		'click #intro' : 'factsIntro',
		'click #pros' : 'factsPros',
		'click #cons' : 'factsCons',
		'click #quiz' : 'quizzesIndex',
		'click #add' : 'factsCreate'
	},
	
	render: function() {
		$(this.el).addClass('header-button-sub-container');
		$(this.el).html(this.template({
			
		}));
		return this;
	},
	
	factsIntro: function() {
		Backbone.history.navigate('facts' + this.options.topic.get('id') + '/intro', true);
	},
	
	factsPros: function() {
		Backbone.history.navigate('facts' + this.options.topic.get('id') + '/pros', true);
	},
	
	factsCons: function() {
		Backbone.history.navigate('facts' + this.options.topic.get('id') + '/cons', true);
	},
	
	quizzesIndex: function() {
		Backbone.history.navigate('quizzes' + this.options.topic.get('id'), true);
	},
	
	factsCreate: function() {
		Backbone.history.navigate('facts' + this.options.topic.get('id') + '/new', true);
	}
});