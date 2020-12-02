get '/' do

    recipes = run_sql("SELECT * FROM recipes ORDER BY id")
    erb :'recipes/index', locals: {
        recipes: recipes
    }

end


get '/recipes/new' do

    erb :'recipes/new'

end


post '/recipes' do

    recipe_name = params["recipe_name"]
    serving = params["serving"]
    cooking_time = params["cooking_time"]
    ingredient = params["ingredient"]
    step_by_step = params["step_by_step"]
    recipe_image_url = params["image_url"]

    run_sql("INSERT INTO recipes(recipe_name,serving,cooking_time,ingredient,step_by_step,image_url) VALUES('#{recipe_name}','#{serving}','#{cooking_time}','#{ingredient}','#{step_by_step}','#{recipe_image_url}')")


    redirect '/'

end

get '/recipes/:id/edit' do

    recipe_id = params["id"]

    recipe = run_sql("SELECT * FROM recipes WHERE id= #{recipe_id}")
    recipe_item = recipe[0]

    erb :'recipes/edit', locals: {
        recipe_item: recipe_item
    }

end

patch '/recipes/:id' do

    recipe_id = params["id"]
    recipe_name = params["recipe_name"]
    serving = params["serving"]
    cooking_time = params["cooking_time"]
    ingredient = params["ingredient"]
    step_by_step = params["step_by_step"]
    recipe_image_url = params["image_url"]

    run_sql("UPDATE recipes SET recipe_name='#{recipe_name}',serving='#{serving}',cooking_time='#{cooking_time}',ingredient='#{ingredient}',step_by_step='#{step_by_step}',image_url='#{recipe_image_url}' WHERE id=#{recipe_id}")

    redirect '/'

end


delete '/recipes/:id' do

    recipe_id = params["id"]

    run_sql("DELETE FROM recipes WHERE id=#{recipe_id}")

    redirect '/'

end