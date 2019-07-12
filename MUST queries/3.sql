USE hb618_204

SELECT ingredient_name, recipe_desc FROM Ingredient i 
inner join RecipeIngredient ri
ON i.ingredient_code = ri.ingredient_code

inner join Recipe r
ON ri.recipe_code = r.recipe_code

ORDER BY recipe_desc ASC;


