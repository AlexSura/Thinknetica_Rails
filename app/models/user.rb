class User < ApplicationRecord
  has_many :test_passages,  dependent: :destroy
  has_many :tests, through: :test_passeges
  has_many :my_tests, class_name: 'Test', foreign_key: :author_id, dependent: :nullify

  validates :email, presence: true

  

  def history(level)
    self.tests.where(level: level)
  end

  def test_passege(test)
    test_passages.order(id: :desc).find_by(test_id: test.id)
  end

end

