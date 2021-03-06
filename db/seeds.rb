user_array = 10.times.collect do User.create!(username: Faker::HarryPotter.unique.character, email: Faker::Internet.safe_email, password: "pass")
end
category_array = [Category.create!( name: "Appetizer" ), Category.create!( name: "Salad" ), Category.create!( name: "Main Course" ), Category.create!( name: "Dessert" )]

recipe_array = 20.times.collect do Recipe.create!( name: Faker::Food.dish, difficulty: [1, 2, 3].sample, prep_time: [100, 25, 30].sample, ingredients: "#{Faker::Food.ingredient} #{Faker::Food.measurement}", directions: Faker::Lorem.paragraph, user_id: user_array.sample.id, category_id: category_array.sample.id) end


menu = Menu.create!(appetizer_id: 13, salad_id: 11, main_course_id: 4, dessert_id: 10, date: "2017-11-05")