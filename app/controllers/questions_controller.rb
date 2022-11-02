class QuestionsController < ApplicationController
  def index
  end

  def create
    @quiz = Quiz.find(params[:quiz_id])
    question = @quiz.questions.create(question_params)
   
    if question.save
      redirect_to quiz_path(@quiz)
    else

        redirect_to root_path
    end
  end

  def show
  end

  def destroy
  end
private
  def question_params
    params.require(:question).permit( :op1,:op2,:op3,:op4,:answer,:ques_desc,:quiz_id)
  end
end
