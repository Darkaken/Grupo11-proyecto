class ComentarioPlatosController < ApplicationController
  before_action :set_comentario_plato, only: [:show, :edit, :update, :destroy]

  # GET /comentario_platos
  # GET /comentario_platos.json
  def index
    @comentario_platos = ComentarioPlato.all
  end

  # GET /comentario_platos/1
  # GET /comentario_platos/1.json
  def show
  end

  # GET /comentario_platos/new
  def new
    @comentario_plato = ComentarioPlato.new
  end

  # GET /comentario_platos/1/edit
  def edit
  end

  # POST /comentario_platos
  # POST /comentario_platos.json
  def create
    @comentario_plato = ComentarioPlato.new(comentario_plato_params)

    respond_to do |format|
      if @comentario_plato.save
        format.html { redirect_to @comentario_plato, notice: 'Comentario plato was successfully created.' }
        format.json { render :show, status: :created, location: @comentario_plato }
      else
        format.html { render :new }
        format.json { render json: @comentario_plato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comentario_platos/1
  # PATCH/PUT /comentario_platos/1.json
  def update
    respond_to do |format|
      if @comentario_plato.update(comentario_plato_params)
        format.html { redirect_to @comentario_plato, notice: 'Comentario plato was successfully updated.' }
        format.json { render :show, status: :ok, location: @comentario_plato }
      else
        format.html { render :edit }
        format.json { render json: @comentario_plato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comentario_platos/1
  # DELETE /comentario_platos/1.json
  def destroy
    @comentario_plato.destroy
    respond_to do |format|
      format.html { redirect_to comentario_platos_url, notice: 'Comentario plato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comentario_plato
      @comentario_plato = ComentarioPlato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comentario_plato_params
      params.require(:comentario_plato).permit(:user_id, :plt_id, :fecha, :puntaje, :contenido)
    end
end
