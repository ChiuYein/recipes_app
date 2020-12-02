get '/login' do
    
    erb :'/sessions/login'
end


post '/sessions' do
    users_email = params["email"]
    users_password = params["password"]
    
    users = run_sql("SELECT * FROM users WHERE email='#{users_email}'")

    user = user_found(users)

    if user && BCrypt::Password.new(user['password_digest']) == params['password']

        session[:user_id] = user['id']

        redirect '/'

    else 
        erb :'/sessions/login'
    end    
end


delete '/sessions' do
    
    session[:user_id] = nil

    redirect '/'
    
end