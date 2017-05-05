class User < ActiveRecord::Base
  # Remember to create a migration!
   include BCrypt
   has_many :surveys
   has_many :estadisticas
   has_many :answer_options, through: :estadisticas

   
   validates :username, presence: true
   validates :name, presence: true
   validates :email, presence: true, uniqueness: true
   validates :password, presence: true


   def password
    @password ||= Password.new(password_digest)
  end

  def password=(user_password)
    @password = Password.create(user_password)
    self.password_digest = @password
  end

  def self.authenticate(email, user_password)
    user = User.find_by(email: email)
    if user && (user.password == user_password)
      return user
    else
      nil
    end
  end
end


