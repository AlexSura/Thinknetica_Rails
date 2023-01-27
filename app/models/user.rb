class User < ApplicationRecord
  has_and_belongs_to_many :tests

  def history(level)
    name_test = self.tests.where(level: level)
    name_test.pluck("title")
  end
end
