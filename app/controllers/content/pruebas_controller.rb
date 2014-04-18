class Content::PruebasController < ApplicationController
  before_action :set_content_prueba, only: [:show, :edit, :update, :destroy]

  # GET /content/pruebas
  # GET /content/pruebas.json
  def index
    @content_pruebas = Content::Prueba.all
  end

  # GET /content/pruebas/1
  # GET /content/pruebas/1.json
  def show
  end

  # GET /content/pruebas/new
  def new
    @content_prueba = Content::Prueba.new
  end

  # GET /content/pruebas/1/edit
  def edit
  end

  # POST /content/pruebas
  # POST /content/pruebas.json
  def create
    @content_prueba = Content::Prueba.new(content_prueba_params)

    respond_to do |format|
      if @content_prueba.save
        format.html { redirect_to @content_prueba, notice: 'Prueba was successfully created.' }
        format.json { render action: 'show', status: :created, location: @content_prueba }
      else
        format.html { render action: 'new' }
        format.json { render json: @content_prueba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /content/pruebas/1
  # PATCH/PUT /content/pruebas/1.json
  def update
    respond_to do |format|
      if @content_prueba.update(content_prueba_params)
        format.html { redirect_to @content_prueba, notice: 'Prueba was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @content_prueba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content/pruebas/1
  # DELETE /content/pruebas/1.json
  def destroy
    @content_prueba.destroy
    respond_to do |format|
      format.html { redirect_to content_pruebas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_prueba
      @content_prueba = Content::Prueba.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_prueba_params
      params.require(:content_prueba).permit(:nombre, :apellidos)
    end
end
