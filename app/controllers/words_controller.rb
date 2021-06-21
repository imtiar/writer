class WordsController < ApplicationController
  before_action :set_word, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[edit create update destroy]

  # GET /words or /words.json
  def index
    @words = Word.all
  end

  # GET /words/1 or /words/1.json
  def show
  end

  # GET /words/new
  def new
    @word = Word.new
  end

  # GET /words/1/edit
  def edit
  end

  # POST /words or /words.json
  def create
    @word = Word.new(word_params)
    @word.user_id = current_user.id

    if params[:status] == "toukou"
      @word.status = 1
    else
      @word.status = 0
    end

    respond_to do |format|
      if @word.save
        NoticeMailer.sendmail_word(@word).deliver #追記
        format.html { redirect_to @word, notice: "Word was successfully created." }
        format.json { render :show, status: :created, location: @word }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /words/1 or /words/1.json
  def update
    if params[:status] == "toukou"
      @word.status = 1
    else
      @word.status = 0
    end
    
    respond_to do |format|
      old_status = @word.status
      if @word.update(word_params)
        if @word.status != old_status
          format.html { redirect_to words_mine_path }
          format.json { render :show, status: :ok, location: @word }
        end
        
        format.html { redirect_to @word, notice: "Word was successfully updated." }
        format.json { render :show, status: :ok, location: @word }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /words/1 or /words/1.json
  def destroy
    @words = Word.all
    @word.destroy
    respond_to do |format|
      format.html { redirect_to words_url, notice: "Word was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def my_words
    @my_words = Word.where(user_id: current_user.id).order(:id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word
      @word = Word.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def word_params
      params.require(:word).permit(:line1, :line2, :line3, :status, :user_id)
    end
end
