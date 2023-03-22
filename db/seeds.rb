# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = Category.create([{title: 'junior'},{title: 'midle'}])
testt = Test.new
tests = Test.create([{title: 'PHP', level: 1, category_id: categories[0]}, {title: 'JS', level: 1, category_id: categories[0]}, {title: 'React', level: 2, category_id: categories[1]}])
questions = Question.create([{body: "что то про тест написано но не точно", test_id: tests[0]}])
answers = Answer.create([{correct: true, body:'ответ на вопрос', question_id: questions[0]}])
users = User.create([{name: 'Pavel', age: 22}, {name: 'Roma', age: 33}])


