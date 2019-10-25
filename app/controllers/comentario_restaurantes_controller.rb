class ComentarioRestaurantesController < ApplicationController
  before_action :set_comentario_restaurante, only: [:show, :edit, :update, :destroy]

  # GET /comentario_restaurantes
  # GET /comentario_restaurantes.json
  def index
    @comentario_restaurantes = ComentarioRestaurante.all
  end

  # GET /comentario_restaurantes/1
  # GET /comentario_restaurantes/1.json
  def show
  end

  # GET /comentario_restaurantes/new
  def new
    @comentario_restaurante = ComentarioRestaurante.new
  end

  # GET /comentario_restaurantes/1/edit
  def edit
  end

  # POST /comentario_restaurantes
  # POST /comentario_restaurantes.json
  def create
    @comentario_restaurante = ComentarioRestaurante.new(comentario_restaurante_params)

    respond_to do |format|
      if @comentario_restaurante.save
        format.html { redirect_to @comentario_restaurante, notice: 'Comentario restaurante was successfully created.' }
        format.json { render :show, status: :created, location: @comentario_restaurante }
      else
        format.html { render :new }
        format.json { render json: @comentario_restaurante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comentario_restaurantes/1
  # PATCH/PUT /comentario_restaurantes/1.json
  def update
    respond_to do |format|
      if @comentario_restaurante.update(comentario_restaurante_params)
        format.html { redirect_to @comentario_restaurante, notice: 'Comentario restaurante was successfully updated.' }
        format.json { render :show, status: :ok, location: @comentario_restaurante }
      else
        format.html { render :edit }
        format.json { render json: @comentario_restaurante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comentario_restaurantes/1
  # DELETE /comentario_restaurantes/1.json
  def destroy
    @comentario_restaurante.destroy
    respond_to do |format|
      format.html { redirect_to comentario_restaurantes_url, notice: 'Comentario restaurante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comentario_restaurante
      @comentario_restaurante = ComentarioRestaurante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comentario_restaurante_params
      params.require(:comentario_restaurante).permit(:user_id, :rest_id, :fecha, :puntaje, :contenido)
    end
end
