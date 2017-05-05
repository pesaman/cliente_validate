class CreateEstadisticas < ActiveRecord::Migration[5.0]
  def change
   create_table :estadisticas do |t|
     t.belongs_to :user, index: true
     t.belongs_to :survey, index: true
     t.belongs_to :answer_option, index: true
   end
  end
end


















