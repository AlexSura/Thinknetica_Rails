class Test < ApplicationRecord
  belongs_to :author, class_name: 'User'

  belongs_to :category 
  
  has_many :questions, dependent: :destroy
  has_many :test_passages, dependent: :destroy
  has_many :users, through: :test_passages

  validates :title, presence: true
                    #uniqueness: true

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :heavy, -> { where(level: 5..Float::INFINITY) }
  scope :test_categories, -> (name_category) {joins(:category).where(category: { title: name_category })}
  
  validates :title, presence: true, uniqueness: { scope: :level }
  validates :level, numericality: { greater_than: 0, only_integer: true }

  def self.arr_categories(name_category)
    test_categories(name_category).order(title: :desc).pluck(:title)
  end
end

