get '/signup' do

    erb :'users/signup'
  
  end
  
  
  post '/users' do
    users_first_name = params["first_name"]
    users_last_name = params["last_name"]
    users_email = params["email"]
    users_password = params["password"]

    create_user(first_name, last_name, email, password)    
  
    redirect 'recipes/main'
  
  end