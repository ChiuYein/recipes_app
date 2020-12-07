require 'bcrypt'

##Models is dealing with data, talks to database

def create_user(first_name, last_name, email, password)
    password_digest = BCrypt::Password.create(users_password)
  
    run_sql("INSERT INTO users(first_name,last_name,email,password_digest) VALUES('#{users_first_name}','#{users_last_name}','#{users_email}','#{password_digest}')") 

end

def find_user(user_id)
    run_sql("SELECT * FROM users WHERE id = #{user_id}")
end