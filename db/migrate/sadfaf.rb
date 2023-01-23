Test: model
tests
id: integer
title: string
level: integer
category_id: ineger

Question
questions
id: integer
body: string > 75
test_id: integer

Answer
answers
id: integer
correct: boolean
body: string > 75
question_id: int

User
users
name: string
age: integer
id: integer
answer_id: integer

Category
categories
id: integer
title: string > 25
