class ContienePlatosController < ApplicationController
  before_action :set_contiene_plato, only: [:show, :edit, :update, :destroy]

  # GET /contiene_platos
  # GET /contiene_platos.json
  def index
    @contiene_platos = ContienePlato.all
  end

  # GET /contiene_platos/1
  # GET /contiene_platos/1.json
  def show
  end

  # GET /contiene_platos/new
  def new
    @contiene_plato = ContienePlato.new
  end

  # GET /contiene_platos/1/edit
  def edit
  end

  # POST /contiene_platos
  # POST /contiene_platos.json
  def create
    @contiene_plato = ContienePlato.new(contiene_plato_params)

    respond_to do |format|
      if @contiene_plato.save
        format.html { redirect_to @contiene_plato, notice: 'Contiene plato was successfully created.' }
        format.json { render :show, status: :created, location: @contiene_plato }
      else
        format.html { render :new }
        format.json { render json: @contiene_plato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contiene_platos/1
  # PATCH/PUT /contiene_platos/1.json
  def update
    respond_to do |format|
      if @contiene_plato.update(contiene_plato_params)
        format.html { redirect_to @contiene_plato, notice: 'Contiene plato was successfully updated.' }
        format.json { render :show, status: :ok, location: @contiene_plato }
      else
        format.html { render :edit }
        format.json { render json: @contiene_plato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contiene_platos/1
  # DELETE /contiene_platos/1.json
  def destroy
    @contiene_plato.destroy
    respond_to do |format|
      format.html { redirect_to contiene_platos_url, notice: 'Contiene plato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contiene_plato
      @contiene_plato = ContienePlato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contiene_plato_params
      params.require(:contiene_plato).permit(:order_id, :plt_id)
    end
end
