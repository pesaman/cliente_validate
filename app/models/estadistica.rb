class Estadistica < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :survey
  belongs_to :answer_option
end
