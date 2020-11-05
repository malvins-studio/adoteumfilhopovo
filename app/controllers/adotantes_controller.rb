class AdotantesController < ApplicationController
  before_action :set_adotante, only: [:show, :edit, :update, :destroy]

  # GET /adotantes
  # GET /adotantes.json
  def index
    @adotantes = Adotante.all
  end

  # GET /adotantes/1
  # GET /adotantes/1.json
  def show
  end

  # GET /adotantes/new
  def new
    @adotante = Adotante.new
  end

  # GET /adotantes/1/edit
  def edit
  end

  # POST /adotantes
  # POST /adotantes.json
  def create
    @adotante = Adotante.new(adotante_params)

    respond_to do |format|
      if @adotante.save
        format.html { redirect_to @adotante, notice: 'Adotante was successfully created.' }
        format.json { render :show, status: :created, location: @adotante }
      else
        format.html { render :new }
        format.json { render json: @adotante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adotantes/1
  # PATCH/PUT /adotantes/1.json
  def update
    respond_to do |format|
      if @adotante.update(adotante_params)
        format.html { redirect_to @adotante, notice: 'Adotante was successfully updated.' }
        format.json { render :show, status: :ok, location: @adotante }
      else
        format.html { render :edit }
        format.json { render json: @adotante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adotantes/1
  # DELETE /adotantes/1.json
  def destroy
    @adotante.destroy
    respond_to do |format|
      format.html { redirect_to adotantes_url, notice: 'Adotante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adotante
      @adotante = Adotante.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adotante_params
      params.require(:adotante).permit(:nome, :estado, :email, :telefone, :pedido_oracao, :marcou_comprometimento)
    end
end
