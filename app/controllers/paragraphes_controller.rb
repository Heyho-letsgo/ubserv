class ParagraphesController < ApplicationController
  before_action :set_paragraphe, only: [:show, :edit, :update, :destroy]

  # GET /paragraphes
  # GET /paragraphes.json
  def index
    @paragraphes = Paragraphe.all
  end

  # GET /paragraphes/1
  # GET /paragraphes/1.json
  def show
  end

  # GET /paragraphes/new
  def new
    @chapitre = 
    @paragraphe = Paragraphe.new
  end

  # GET /paragraphes/1/edit
  def edit
  end

  # POST /paragraphes
  # POST /paragraphes.json
  def create
    @paragraphe = Paragraphe.new(paragraphe_params)

    respond_to do |format|
      if @paragraphe.save
        format.html { redirect_to @paragraphe, notice: 'Paragraphe was successfully created.' }
        format.json { render :show, status: :created, location: @paragraphe }
      else
        format.html { render :new }
        format.json { render json: @paragraphe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paragraphes/1
  # PATCH/PUT /paragraphes/1.json
  def update
    respond_to do |format|
      if @paragraphe.update(paragraphe_params)
        format.html { redirect_to @paragraphe, notice: 'Paragraphe was successfully updated.' }
        format.json { render :show, status: :ok, location: @paragraphe }
      else
        format.html { render :edit }
        format.json { render json: @paragraphe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paragraphes/1
  # DELETE /paragraphes/1.json
  def destroy
    @paragraphe.destroy
    respond_to do |format|
      format.html { redirect_to paragraphes_url, notice: 'Paragraphe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paragraphe
      @paragraphe = Paragraphe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paragraphe_params
      params.require(:paragraphe).permit(:corps)
    end
end
