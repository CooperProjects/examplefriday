class DadabadasController < ApplicationController
  before_action :set_dadabada, only: [:show, :edit, :update, :destroy]

  # GET /dadabadas
  # GET /dadabadas.json
  def index
    @dadabadas = Dadabada.all
  end

  # GET /dadabadas/1
  # GET /dadabadas/1.json
  def show
  end

  # GET /dadabadas/new
  def new
    @dadabada = Dadabada.new
  end

  # GET /dadabadas/1/edit
  def edit
  end

  # POST /dadabadas
  # POST /dadabadas.json
  def create
    @dadabada = Dadabada.new(dadabada_params)

    respond_to do |format|
      if @dadabada.save
        format.html { redirect_to @dadabada, notice: 'Dadabada was successfully created.' }
        format.json { render :show, status: :created, location: @dadabada }
      else
        format.html { render :new }
        format.json { render json: @dadabada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dadabadas/1
  # PATCH/PUT /dadabadas/1.json
  def update
    respond_to do |format|
      if @dadabada.update(dadabada_params)
        format.html { redirect_to @dadabada, notice: 'Dadabada was successfully updated.' }
        format.json { render :show, status: :ok, location: @dadabada }
      else
        format.html { render :edit }
        format.json { render json: @dadabada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dadabadas/1
  # DELETE /dadabadas/1.json
  def destroy
    @dadabada.destroy
    respond_to do |format|
      format.html { redirect_to dadabadas_url, notice: 'Dadabada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dadabada
      @dadabada = Dadabada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dadabada_params
      params.require(:dadabada).permit(:alphanu, :numbers, :floats, :files)
    end
end
