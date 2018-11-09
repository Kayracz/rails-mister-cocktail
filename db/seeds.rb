require "open-uri"

# Create A TON of Ingredientes

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
file = open(url)
results = JSON.parse(file.read)

results["drinks"].each do |drink|
  ing = Ingredient.new
  ing.name = drink["strIngredient1"]
  ing.save
end
