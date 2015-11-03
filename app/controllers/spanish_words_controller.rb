class SpanishWordsController < ApplicationController
  before_action :set_spanish_word, only: [:show, :edit, :update, :destroy]

  # GET /spanish_words
  # GET /spanish_words.json
  def index
    @spanish_words = SpanishWord.all
  end

  # GET /spanish_words/1
  # GET /spanish_words/1.json
  def show
  end

  # GET /spanish_words/new
  def new
    english_word = EnglishWord.find(params[:id])
    @spanish_word = SpanishWord.new kind: english_word.kind, english_word_id: english_word.id
  end

  # GET /spanish_words/1/edit
  def edit
  end

  # POST /spanish_words
  # POST /spanish_words.json
  def create
    @spanish_word = SpanishWord.new(spanish_word_params)

    respond_to do |format|
      if @spanish_word.save
        format.html { redirect_to @spanish_word, notice: 'Spanish word was successfully created.' }
        format.json { render :show, status: :created, location: @spanish_word }
      else
        format.html { render :new }
        format.json { render json: @spanish_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spanish_words/1
  # PATCH/PUT /spanish_words/1.json
  def update
    respond_to do |format|
      if @spanish_word.update(spanish_word_params)
        format.html { redirect_to @spanish_word, notice: 'Spanish word was successfully updated.' }
        format.json { render :show, status: :ok, location: @spanish_word }
      else
        format.html { render :edit }
        format.json { render json: @spanish_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spanish_words/1
  # DELETE /spanish_words/1.json
  def destroy
    @spanish_word.destroy
    respond_to do |format|
      format.html { redirect_to spanish_words_url, notice: 'Spanish word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spanish_word
      @spanish_word = SpanishWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spanish_word_params
      params.require(:spanish_word).permit(:neutral, :neutral_plural, :male, :male_plural, :female, :female_plural, :kind, :english_word_id)
    end
end
