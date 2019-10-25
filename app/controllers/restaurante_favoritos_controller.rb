class RestauranteFavoritosController < ApplicationController
  before_action :set_restaurante_favorito, only: [:show, :edit, :update, :destroy]

  # GET /restaurante_favoritos
  # GET /restaurante_favoritos.json
  def index
    @restaurante_favoritos = RestauranteFavorito.all
  end

  # GET /restaurante_favoritos/1
  # GET /restaurante_favoritos/1.json
  def show
  end

  # GET /restaurante_favoritos/new
  def new
    @restaurante_favorito = RestauranteFavorito.new
  end

  # GET /restaurante_favoritos/1/edit
  def edit
  end

  # POST /restaurante_favoritos
  # POST /restaurante_favoritos.json
  def create
    @restaurante_favorito = RestauranteFavorito.new(restaurante_favorito_params)

    respond_to do |format|
      if @restaurante_favorito.save
        format.html { redirect_to @restaurante_favorito, notice: 'Restaurante favorito was successfully created.' }
        format.json { render :show, status: :created, location: @restaurante_favorito }
      else
        format.html { render :new }
        format.json { render json: @restaurante_favorito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurante_favoritos/1
  # PATCH/PUT /restaurante_favoritos/1.json
  def update
    respond_to do |format|
      if @restaurante_favorito.update(restaurante_favorito_params)
        format.html { redirect_to @restaurante_favorito, notice: 'Restaurante favorito was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurante_favorito }
      else
        format.html { render :edit }
        format.json { render json: @restaurante_favorito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurante_favoritos/1
  # DELETE /restaurante_favoritos/1.json
  def destroy
    @restaurante_favorito.destroy
    respond_to do |format|
      format.html { redirect_to restaurante_favoritos_url, notice: 'Restaurante favorito was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurante_favorito
      @restaurante_favorito = RestauranteFavorito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurante_favorito_params
      params.require(:restaurante_favorito).permit(:user_id, :rest_id)
    end
end
