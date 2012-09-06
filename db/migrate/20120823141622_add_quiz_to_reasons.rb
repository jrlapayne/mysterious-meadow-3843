class AddQuizToReasons < ActiveRecord::Migration
  def change
    add_column :reasons, :question, :string
    add_column :reasons, :correct, :string
    add_column :reasons, :wrong1, :string
    add_column :reasons, :wrong2, :string
    add_column :reasons, :wrong3, :string
    add_column :reasons, :wrong4, :string
    
    add_column :tasks, :is_quiz, :boolean
    add_column :tasks, :answer, :string
    add_column :tasks, :score, :integer
    
    add_column :users, :level, :integer, default: 0
    add_column :users, :xp, :integer, default: 0
  end
end
