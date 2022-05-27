class GinasiosController < ApplicationController
  before_action :set_ginasio, only: %i[ show edit update destroy ]

  # GET /ginasios or /ginasios.json
  def index
    @ginasios = Ginasio.all
  end

  # GET /ginasios/1 or /ginasios/1.json
  def show
  end

  # GET /ginasios/new
  def new
    @ginasio = Ginasio.new
  end

  # GET /ginasios/1/edit
  def edit
  end

  # POST /ginasios or /ginasios.json
  def create
    @ginasio = Ginasio.new(ginasio_params)

    respond_to do |format|
      if @ginasio.save
        format.html { redirect_to ginasio_url(@ginasio), notice: "Ginasio was successfully created." }
        format.json { render :show, status: :created, location: @ginasio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ginasio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ginasios/1 or /ginasios/1.json
  def update
    respond_to do |format|
      if @ginasio.update(ginasio_params)
        format.html { redirect_to ginasio_url(@ginasio), notice: "Ginasio was successfully updated." }
        format.json { render :show, status: :ok, location: @ginasio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ginasio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ginasios/1 or /ginasios/1.json
  def destroy
    @ginasio.destroy

    respond_to do |format|
      format.html { redirect_to ginasios_url, notice: "Ginasio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ginasio
      @ginasio = Ginasio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ginasio_params
      params.require(:ginasio).permit(:nome, :rua, :bairro, :numero, :responsavel, :telefone)
    end
end
