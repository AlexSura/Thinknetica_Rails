class Test < ApplicationRecord
  has_many :users
  has_many :tests, through: :users

  def self.list(string)
    cat = Category.where("title == ?", string)
    id_categories = cat.pluck(:id)
    testt = Test.joins('JOIN categories ON tests.category_id = categories.id')
    testt = testt.where("categories.id == ?", id_categories)
    testt = testt.order(title: :desc)
    testt = testt.pluck("title")
  end
end

=begin
Создайте метод класса в модели Test, который возвращает отсортированный по убыванию
 массив названий всех Тестов у которых Категория называется определённым образом 
 (название категории передается в метод в качестве аргумента). 
=end
