class Test < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :user_id

  belongs_to :category 
  
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  validates :title, presence: true
                    #uniqueness: true

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :heavy, -> { where(level: 5..Float::INFINITY) }
  scope :what_categories, -> (name_category) {joins(:category).where(category: { title: name_category })}
  
  validates :title, presence: true, uniqueness: { scope: :level }
  validates :level, numericality: { greater_than: 0, only_integer: true }

  def self.arr_categories(name_category)
    what_categories(name_category).order(title: :desc).pluck(:title)
  end
end

