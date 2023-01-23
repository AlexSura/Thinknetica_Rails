class Test < ApplicationRecord
  has_many :users
  has_many :tests, through: :users

  def self.list(string)

    testt = Test.joins('JOIN categories ON tests.category_id = category.id')
  end
end

=begin
Создайте метод класса в модели Test, который возвращает отсортированный по убыванию
 массив названий всех Тестов у которых Категория называется определённым образом 
 (название категории передается в метод в качестве аргумента). 
=end
