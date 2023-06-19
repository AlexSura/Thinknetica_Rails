class User < ApplicationRecord
  has_many :test_passages,  dependent: :destroy
  has_many :tests, through: :test_passages
  has_many :my_tests, class_name: 'Test', foreign_key: :author_id, dependent: :nullify

  #validates :name, :email, presence: true
  #validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP}

  has_secure_password
  

  def history(level)
    self.tests.where(level: level)
  end

  def test_passage(test)
    test_passages.order(id: :desc).find_by(test_id: test.id)
  end

end

