# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Topic.create(
  brief_title: 'Topic One', 
  title: 'This is a longer topic title for topic 1', 
  description: 'topic one description',
  is_approved: true)
  
Topic.create(
  brief_title: 'Topic Two', 
  title: 'This is a longer topic title for topic 2', 
  description: 'topic two description',
  is_approved: true)

Topic.create(
  brief_title: 'Topic Three', 
  title: 'This is a longer topic title for topic 3', 
  description: 'topic three description',
  is_approved: true)
  
Reason.create(
  topic_id: 1,
  title: 'Reason One',
  description: 'Reason 1 topic 1 description',
  url1: 'www.reason1topic1.com',
  is_approved: true)
  
Reason.create(
  topic_id: 1,
  title: 'Reason Two',
  description: 'Reason 2 topic 1 description',
  url1: 'www.reason2topic1.com',
  is_approved: true)
  
Reason.create(
  topic_id: 1,
  title: 'Reason Three',
  description: 'Reason 3 topic 1 description',
  url1: 'www.reason3topic1.com',
  is_approved: true)
  
Reason.create(
  topic_id: 2,
  title: 'Reason One',
  description: 'Reason 1 topic 2 description',
  url1: 'www.reason1topic2.com',
  is_approved: true)
  
Reason.create(
  topic_id: 2,
  title: 'Reason Two',
  description: 'Reason 2 topic 2 description',
  url1: 'www.reason2topic2.com',
  is_approved: true)
  
Reason.create(
  topic_id: 2,
  title: 'Reason Three',
  description: 'Reason 3 topic 2 description',
  url1: 'www.reason3topic2.com',
  is_approved: true)
  
Reason.create(
  topic_id: 3,
  title: 'Reason One',
  description: 'Reason 1 topic 3 description',
  url1: 'www.reason1topic3.com',
  is_approved: true)
  
Reason.create(
  topic_id: 3,
  title: 'Reason Two',
  description: 'Reason 2 topic 3 description',
  url1: 'www.reason2topic3.com',
  is_approved: true)
  
Reason.create(
  topic_id: 3,
  title: 'Reason Three',
  description: 'Reason 3 topic 3 description',
  url1: 'www.reason3topic3.com',
  is_approved: true)