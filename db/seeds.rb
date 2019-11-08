require 'open-uri'

Ingredient.destroy_all

data = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read

JSON.parse(data)['drinks'].each do |drink|
  Ingredient.create!(name: drink['strIngredient1'])

url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
article = Article.new(title: 'NES', body: "A great console")
article.remote_photo_url = url
article.save
end

