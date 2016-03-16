class QuestionsController < ApplicationController
  def new
    @question = Question.new
    4.times {@question.options.build}
  end

  def create
    byebug
    @question = Question.new question_params
    if @question.save
      flash[:notice] = "Created"
      # redirect_to question_path @question
      redirect_to :back
    else
      render "new"
    end
  end

  private
  def question_params
    params.require(:question).permit(:content, :subject_id,
      options_attributes: [:id, :content, :_destroy, :correct])
  end
end
