class UserQuestionAnsController < ApplicationController
    layout 'admin'
    before_action :set_user_question_an, only: [:show, :edit, :update, :destroy]

  # GET /user_question_ans
  # GET /user_question_ans.json
  def index
    @user_question_ans = UserQuestionAn.all
  end

  # GET /user_question_ans/1
  # GET /user_question_ans/1.json
  def show
  end

  # GET /user_question_ans/new
  def new
    @user_question_an = UserQuestionAn.new
  end

  # GET /user_question_ans/1/edit
  def edit
  end

  # POST /user_question_ans
  # POST /user_question_ans.json
  def create
    @user_question_an = UserQuestionAn.new(user_question_an_params)

    respond_to do |format|
      if @user_question_an.save
        format.html { redirect_to @user_question_an, notice: 'User question an was successfully created.' }
        format.json { render :show, status: :created, location: @user_question_an }
      else
        format.html { render :new }
        format.json { render json: @user_question_an.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_question_ans/1
  # PATCH/PUT /user_question_ans/1.json
  def update
    respond_to do |format|
      if @user_question_an.update(user_question_an_params)
        format.html { redirect_to @user_question_an, notice: 'User question an was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_question_an }
      else
        format.html { render :edit }
        format.json { render json: @user_question_an.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_question_ans/1
  # DELETE /user_question_ans/1.json
  def destroy
    @user_question_an.destroy
    respond_to do |format|
      format.html { redirect_to user_question_ans_url, notice: 'User question an was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_question_an
      @user_question_an = UserQuestionAn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_question_an_params
      params.require(:user_question_an).permit(:is_right)
    end
end
