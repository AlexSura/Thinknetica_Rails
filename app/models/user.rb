class User < ApplicationRecord
  has_many :tests

  def self.history(level)
    name_test = Test.joins("JOIN users ON users.id = tests.id WHERE tests.level = '#{level}'")
    name_test.pluck("title")
  end
end
