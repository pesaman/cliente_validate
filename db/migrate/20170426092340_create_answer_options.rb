class CreateAnswerOptions < ActiveRecord::Migration[5.0]
  def change
   create_table :answer_options do |t|
    t.belongs_to :question, index: true
    t.string :option_name
   end
  end
end
