# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create([{title: 'junior'},{title: 'midle'}])
Test.create([{title: 'PHP', level: 1, category_id: nil}, {title: 'JS', level: 1, category_id: nil }, {title: 'React', level: 2, category_id:nil }])
Question.create([{body: "что то про тест написано но не точно"}])
Answer.create([{correct: true, body:'ответ на вопрос'}])
User.create([{name: 'Pavel', age: 22}, {name: 'Roma', age: 33}])


