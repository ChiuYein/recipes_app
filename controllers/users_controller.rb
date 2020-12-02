get '/signup' do

    erb :'users/signup'
  
  end
  
  
  post '/users' do
    users_first_name = params["first_name"]
    users_last_name = params["last_name"]
    users_email = params["email"]
    users_password = params["password"]
    password_digest = BCrypt::Password.create(users_password)
  
    run_sql("INSERT INTO users(first_name,last_name,email,password_digest) VALUES('#{users_first_name}','#{users_last_name}','#{users_email}','#{password_digest}')") 
  
    redirect '/'
  
  end