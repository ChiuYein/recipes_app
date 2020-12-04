require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'
require 'bcrypt'

enable :sessions

#Connect Database
def run_sql(sql)

  db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'recipes_app'})
  results = db.exec(sql)
  db.close
  return results

end

def user_found(users)

  if users.to_a.length > 0
    users[0]
  else
    nil
  end
end

def logged_in?
  
  !!session[:user_id]

end

def current_user

  if logged_in?
    user_id = session[:user_id]
    users = run_sql("SELECT * FROM users WHERE id = #{user_id}")
    user = user_found(users)
  else
    nil
  end

end



require_relative 'controllers/recipes_controller'
require_relative 'controllers/sessions_controller'
require_relative 'controllers/users_controller'

