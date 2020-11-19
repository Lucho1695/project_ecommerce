class HistorialsController < ApplicationController
  before_action :set_histroal, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /historials
  # GET /historials.json
  def index
    @historials = Historial.all
  end

  # GET /historials/1
  # GET /historials/1.json
  def show
  end

  # GET /historials/new
  def new
    @histroal = Historial.new
  end

  # GET /historials/1/edit
  def edit
  end

  # POST /historials
  # POST /historials.json
  def create
    @histroal = Historial.new(histroal_params)

    respond_to do |format|
      if @histroal.save
        format.html { redirect_to @histroal, notice: 'Historial was successfully created.' }
        format.json { render :show, status: :created, location: @histroal }
      else
        format.html { render :new }
        format.json { render json: @histroal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historials/1
  # PATCH/PUT /historials/1.json
  def update
    respond_to do |format|
      if @histroal.update(histroal_params)
        format.html { redirect_to @histroal, notice: 'Historial was successfully updated.' }
        format.json { render :show, status: :ok, location: @histroal }
      else
        format.html { render :edit }
        format.json { render json: @histroal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historials/1
  # DELETE /historials/1.json
  def destroy
    @histroal.destroy
    respond_to do |format|
      format.html { redirect_to historials_url, notice: 'Historial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_histroal
      @histroal = Historial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def histroal_params
      params.require(:histroal).permit(:order_id)
    end
end
