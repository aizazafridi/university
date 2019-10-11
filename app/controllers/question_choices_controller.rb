class QuestionChoicesController < ApplicationController
  before_action :set_question_choice, only: [:show, :edit, :update, :destroy]

  # GET /question_choices
  # GET /question_choices.json
  def index
    @question_choices = QuestionChoice.all
  end

  # GET /question_choices/1
  # GET /question_choices/1.json
  def show
    @question_choices = QuestionChoice.find(params[:id])
    @question = Question.find_by_id(@question_choices.question_id)
      
  end

  # GET /question_choices/new
  def new
    @question_choice = QuestionChoice.new
  end

  # GET /question_choices/1/edit
  def edit
  end

  # POST /question_choices
  # POST /question_choices.json
  def create
    @question_choice = QuestionChoice.new(question_choice_params)

    respond_to do |format|
      if @question_choice.save
        format.html { redirect_to @question_choice, notice: 'Question choice was successfully created.' }
        format.json { render :show, status: :created, location: @question_choice }
      else
        format.html { render :new }
        format.json { render json: @question_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_choices/1
  # PATCH/PUT /question_choices/1.json
  def update
    respond_to do |format|
      if @question_choice.update(question_choice_params)
        format.html { redirect_to @question_choice, notice: 'Question choice was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_choice }
      else
        format.html { render :edit }
        format.json { render json: @question_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_choices/1
  # DELETE /question_choices/1.json
  def destroy
    @question_choice.destroy
    respond_to do |format|
      format.html { redirect_to question_choices_url, notice: 'Question choice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_choice
      @question_choice = QuestionChoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_choice_params
      params.require(:question_choice).permit(:choice, :is_right_choice, :question_id)
    end
end
