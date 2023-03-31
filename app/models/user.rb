class User < ApplicationRecord
  has_many :tests_users
  has_many :tests, through: :tests_users
  has_many :tests_author, class_name: 'Test', foreign_key: :author_id

  scope :history, ->(level){Test.where( level: level)}

  validates :email, presence: true

=begin
  def history(level)
    self.tests.where(level: level)
  end
=end

end

