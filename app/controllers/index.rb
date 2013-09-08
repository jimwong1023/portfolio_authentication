get '/' do
  if logged_in?
    @user = current_user
    @users = User.all
    erb :index
  else
    redirect '/sessions/new'
  end

  
end

#----------- SESSIONS -----------

get '/sessions/new' do
  # render sign-in page 
  erb :sign_in
end

post '/sessions' do
  # sign-in
  if User.authenticate(params[:email], params[:password])
    @user = User.find_by_email(params[:email])
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = "Email or Password is incorrect"
    erb :sign_in
  end
end

delete '/sessions/:id' do
  # sign-out -- invoked via AJAX
  session[:user_id] = nil
  erb :index
end

#----------- USERS -----------

get '/users/new' do
  # render sign-up page
  erb :sign_up
end

post '/users' do
  # sign-up a new user
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/'
  end
end
