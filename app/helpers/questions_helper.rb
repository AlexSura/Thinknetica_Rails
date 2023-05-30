module QuestionsHelper
  def question_header(question)
    if question.new_record?
      "Create New '#{@test.title}' Question"
    else 
      link_to "Edit '#{question.test.title}'questions", edit_test_path(question) 
    end
  end
end
