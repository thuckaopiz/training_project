class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find params[:id]
  end

  def new
    @question = Question.new
    4.times {@question.options.build}
  end

  def create
    @question = Question.new question_params
    if @question.save
      flash[:notice] = "Created"
      redirect_to question_path @question
      # redirect_to questions_path
    else
      render "new"
    end
  end

  def edit
    @question = Question.find params[:id]
  end

  def update
    @question = Question.find params[:id]
    if @question.update_attributes question_params
      flash[:notice] = "Updated"
      redirect_to question_path @question
    else
      flash[:notice] = "Can't update"
      redirect_to question_path @question
    end
  end

  def destroy
    @question = Question.find params[:id]
    if @question.destroy
      flash[:notice] = "Destroyed"
      redirect_to :back
    else
      flash[:notice] = "Can't destroy"
      redirect_to :back
    end
  end

  def test_math_jax
  end

  private
  def question_params
    params.require(:question).permit(:content, :subject_id,
      options_attributes: [:id, :content, :_destroy, :correct])
  end
end
