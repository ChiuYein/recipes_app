require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'
require 'bcrypt'

#Connect Database
def run_sql(sql)
  db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'recipes_app'})
  results = db.exec(sql)
  db.close
  return results
end


get '/' do

    recipes = run_sql("SELECT * FROM recipes ORDER BY id")
    erb :'recipes/index', locals: {
        recipes: recipes
    }

end


post '/recipes' do

  recipe_name = params["recipe_name"]
  serving = params["serving"]
  cooking_time = params["cooking_time"]
  ingredient = params["ingredient"]
  step_by_step = params["step_by_step"]
  recipe_image_url = params["image_url"]

  redirect '/'
  
end

get '/recipes/new' do
  erb :'recipes/new'
end








require_relative 'controllers/recipes_controller'
require_relative 'controllers/sessions_controller'
require_relative 'controllers/users_controller'

