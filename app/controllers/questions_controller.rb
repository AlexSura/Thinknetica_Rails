class QuestionsController < ApplicationController
  
  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found
  
  before_action :set_test, only: %i[index new create]
  before_action :set_question, only: %i[show destroy]

  def index
    @questions = @test.questions
    render plain: @questions
  end

  def show
    render plain: @question
  end

  def new; end

  def create
    question = @test.questions.new(question_param)
    if question.save 
      render plain: "вопрос создан"
    else 
      render plain: "вопрос не валидный"
    end

  end

  def destroy
    @question.destroy
  end


  private

  def set_test
    @test = Test.find(params[:test_id])
  end

  def set_question
    @question = Question.find(params[:id])
  end

  def question_param
    params.require(:question).permit(:body)
  end

  def rescue_with_question_not_found
    render plain: 'Question was not found!'
  end
end
