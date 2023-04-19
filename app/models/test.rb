class Test < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :user_id

  belongs_to :category 
  
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  def self.arr_categories(name_category)
    
    Test.joins(:category).where(category: { title: name_category }).order(title: :desc).pluck(:title)
    
  end
end







=begin
Создайте метод класса в модели Test, который возвращает отсортированный по убыванию
 массив названий всех Тестов у которых Категория называется определённым образом 
 (название категории передается в метод в качестве аргумента). 
 t= Test.new(title: 'php')
 t2 = Test.new(title: 'JS')
 c = Category.new(title: 'jun')
  t.category = c
  t2.category = c
  t.arr_categories('jun')
=end
