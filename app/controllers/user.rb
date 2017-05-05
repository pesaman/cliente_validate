enable :sessions

get '/' do
  erb :index
end

get '/signup' do
  erb :registrar
end

get '/loogin' do
  erb :loogin
end

get "/home" do
  erb :survey
end

get "/user_profile" do
  p "12a" *50
  erb :profile
end

before '/home' do
  unless session[:user_id]
    session[:error] = "No has iniciado sesión"
    redirect to '/'
  end
end

get '/logout' do
  session.clear
  session[:logout] = "Has cerrado sesión correctamente"
  redirect to '/'
end

post '/signup' do
  username = params[:username]
  name = params[:name]
  email = params[:email]
  password_digest = params[:password]
  existe = User.find_by(email: email)
  user  = User.new(username: username, name: name, email: email, password: password_digest)
  user.save
  if user.valid?
      session[:user_id] = user.id
      session[:correct_user] = "Usuario Creado con Exito"
      redirect to '/home'
  else 
    if existe
      session[:incorrect_user] = "Usuario ya Existe Intenta de Nuevo"
      redirect to '/signup'
      else
      session[:incorrect_user] = "No puedes dejar campos vacios"
      redirect to '/signup'
    end
  end
end

post '/loogin' do
  @email = params[:email]
  @password = params[:password]
  valid_user = User.authenticate(@email, @password)
  p valid_user
  if valid_user
    session[:user_id] = valid_user.id
    redirect to "/home"
  else
    session[:incorrect_user] = "No son correctos tus datos"
    redirect to '/loogin'
  end
end