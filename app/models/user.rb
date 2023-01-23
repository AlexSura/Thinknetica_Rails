class User < ApplicationRecord
  has_many :tests
  has_many :users, through: :tests

  def history(integer)
    pp Test.where("level == ?", integer)
  end
end
