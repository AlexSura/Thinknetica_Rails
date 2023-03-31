class Answer < ApplicationRecord
  belongs_to :question

  scope :true_answer, ->{ where(correct: true)}

  validates :body, presence: true

  validate :answers_length

  private 

  def answers_length
    errors.add(:answers, "no more than 4") if question.answers.length > 3
  end
  
end
