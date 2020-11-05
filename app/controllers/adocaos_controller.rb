class AdocaosController < ApplicationController
  before_action :set_adocao, only: [:show, :edit, :update, :destroy]

  # GET /adocaos
  # GET /adocaos.json
  def index
    @adocaos = Adocao.all
  end

  # GET /adocaos/1
  # GET /adocaos/1.json
  def show
  end

  # GET /adocaos/new
  def new
    @adocao = Adocao.new
  end

  # GET /adocaos/1/edit
  def edit
  end

  # POST /adocaos
  # POST /adocaos.json
  def create
    @adocao = Adocao.new(adocao_params)

    respond_to do |format|
      if @adocao.save
        format.html { redirect_to @adocao, notice: 'Adocao was successfully created.' }
        format.json { render :show, status: :created, location: @adocao }
      else
        format.html { render :new }
        format.json { render json: @adocao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adocaos/1
  # PATCH/PUT /adocaos/1.json
  def update
    respond_to do |format|
      if @adocao.update(adocao_params)
        format.html { redirect_to @adocao, notice: 'Adocao was successfully updated.' }
        format.json { render :show, status: :ok, location: @adocao }
      else
        format.html { render :edit }
        format.json { render json: @adocao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adocaos/1
  # DELETE /adocaos/1.json
  def destroy
    @adocao.destroy
    respond_to do |format|
      format.html { redirect_to adocaos_url, notice: 'Adocao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adocao
      @adocao = Adocao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adocao_params
      params.require(:adocao).permit(:pna_id, :adotante_id, :data_adocao)
    end
end
