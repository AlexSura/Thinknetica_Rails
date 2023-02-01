class Test < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :questions
  belongs_to :user

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
