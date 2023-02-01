class User < ApplicationRecord
  has_and_belongs_to_many :tests

  def history(level)
    self.tests.where(level: level)
  end
end
