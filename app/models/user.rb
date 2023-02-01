class User < ApplicationRecord
  has_and_belongs_to_many :tests
  has_many :tests

  def history(level)
    self.tests.where(level: level)
  end

  def autor
    self.tests.select(test_id)
  end
end
