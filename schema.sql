CREATE DATABASE recipes_app;

\c recipes_app

CREATE TABLE recipes(id SERIAL PRIMARY KEY, recipe_name TEXT, serving TEXT, cooking_time TEXT, ingredient TEXT, step_by_step TEXT, image_url TEXT);

INSERT INTO recipes(recipe_name,serving,cooking_time,ingredient,step_by_step,image_url) VALUES('Gingerbread Christmas Cookies','3 servings','2 hours','melted butter - 170g, brown sugar - 165g, molassses -250g, salt -1 teaspoon, cinnamom -2 teaspoon, ground ginger -2 teaspoon, egg -1, baking powder, baking soda - 1/2 teaspoon,flour - 440g','1. In a large bowl, whisk the melted butterm brown sugar, molasessm salt, cinnamom, ginger, and allspice until smooth. 2. Whish in the egg until combined. 3. Fold in the baking powder, baking soda, and half of the flour.','https://img.buzzfeed.com/video-api-prod/assets/ede7c0d5df024f439208dd3cd8ea291c/Thumdb.jpg');


INSERT INTO recipes(recipe_name,serving,cooking_time,ingredient,step_by_step,image_url) VALUES('4 eggs,2 cups granulated sugar (400 g),1 cup vegetable oil (240 mL),1 teaspoon vanilla extract,4 cups flour (500 g),1 teaspoon baking soda,2 teaspoons baking powder,2 cups sour cream (490 g),2 cups blueberry (200 g)','1.In a mixing bowl, beat eggs. Gradually add sugar. While beating slowly pour in oil. Add vanilla.
2. Combine the dry ingredients. 3. Add dry ingredients alternately with sour cream to the egg mixture. 4. Gently add blueberries. 5. Spoon into the greased muffin tin or paper liners. 6. Bake at 400°F (200°C) for 20 minutes. 7. Enjoy!','https://img.buzzfeed.com/tasty-app-user-assets-prod-us-east-1/recipes/4e9524578f544c888af761e10630593b.jpeg?output-format=webp&output-quality=auto');

INSERT INTO recipes(recipe_name,serving,cooking_time,ingredient,step_by_step,image_url) VALUES('Light Sweet Potato Cake','8 servings','2 hours','1 ½ cups flour (185 g),½ cup whole wheat flour (65 g),2 teaspoons baking powder,½ teaspoon baking soda,1 teaspoon cinnamon,⅛ teaspoon salt,¼ teaspoon ginger,2 eggs,½ teaspoon vanilla,½ cup milk (120 mL),¼ cup oil (60 mL),⅔ cup sugar (135 g),2 tablespoons honey,1 cup sweet potato puree (260 g),peanut butter, for serving (optional)','1. Mix the dry ingredients then the wet ingredients separately. 2. Then mix them together.3.Pour into a loaf pan. 4.Bake in the oven on 350°F (180°C) for 50 minutes to 1 hour. 5.Optional : serve it with peanut butter.','https://img.buzzfeed.com/tasty-app-user-assets-prod-us-east-1/recipes/e6090e770eff40d09bb74530f5000b53.jpeg?output-format=webp&output-quality=auto');



CREATE TABLE users(id SERIAL PRIMARY KEY, first_name TEXT, last_name TEXT, email TEXT, password_digest TEXT);
