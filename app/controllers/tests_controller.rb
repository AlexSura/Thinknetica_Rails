

class TestsController < ApplicationController

  def index
    #render html:"<h1>All tests </h1>".html_safe
    #render json: {tests: []}
    #render json: { tests: Test.all }

    #render inline: '<p> My favourite language is: <%= %[ybuR].reverse! %>!</p>'

    #render file: 'public/hello', layout: false не работает ругается на путь но не понятно почему так как абсолютный путь ничего не рещает
    # head 204
    #head :no_content 

    #byebug
    # render inline: "<%= console %>"

  
  #def start
   # render plain: "start certain test"
  #end
  result = ["Class: #{params.class}", "Parameters: #{params.inspect}"]
  render plain: result.join(" /p ")
  #byebug
  #logger.info(self.object_id)

  #respond_to do |format|
    #format.html { render plain: "All tests"}
    #format.json { render json: {tests: Test.all } }
  #end
end
  def show
    #render json: { tests: Test.all }
    
    #redirect_to root_path
    #redirect_to 'http://rubyonrails.org'
  end

  def new
  end

  def create
      #result = ["Class: #{params.class}", "Parameters: #{params.inspect}"]
      #render plain: result.join(" /p ")
      
      test = Test.create(test_params)
      render plain: test.inspect
  end

  private
  
  def test_params
    params.require(:test).permit(:title, :level)
  end

end
