class Test < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  def self.arr_categories(name_category)
    testt = Test.joins("JOIN categories ON tests.category_id = categories.id WHERE categories.title = '#{name_category}'")
    testt.order(title: :desc).pluck("title")
  end
end

=begin
Создайте метод класса в модели Test, который возвращает отсортированный по убыванию
 массив названий всех Тестов у которых Категория называется определённым образом 
 (название категории передается в метод в качестве аргумента). 
=end
