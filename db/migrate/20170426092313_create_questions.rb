class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
   create_table :questions do |t|
   t.belongs_to :survey, index: true
   t.string :question_name
   end
  end
end
