class AtmospheresController < ApplicationController
  before_action :set_atmosphere, only: [:show, :edit, :update, :destroy]

  # GET /atmospheres
  # GET /atmospheres.json
  def index
    @atmospheres = Atmosphere.all
  end

  # GET /atmospheres/1
  # GET /atmospheres/1.json
  def show
  end

  # GET /atmospheres/new
  def new
    @atmosphere = Atmosphere.new
  end

  # GET /atmospheres/1/edit
  def edit
  end

  # POST /atmospheres
  # POST /atmospheres.json
  def create
    @atmosphere = Atmosphere.new(atmosphere_params)

    respond_to do |format|
      if @atmosphere.save
        format.html { redirect_to @atmosphere, notice: 'Atmosphere was successfully created.' }
        format.json { render :show, status: :created, location: @atmosphere }
      else
        format.html { render :new }
        format.json { render json: @atmosphere.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atmospheres/1
  # PATCH/PUT /atmospheres/1.json
  def update
    respond_to do |format|
      if @atmosphere.update(atmosphere_params)
        format.html { redirect_to @atmosphere, notice: 'Atmosphere was successfully updated.' }
        format.json { render :show, status: :ok, location: @atmosphere }
      else
        format.html { render :edit }
        format.json { render json: @atmosphere.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atmospheres/1
  # DELETE /atmospheres/1.json
  def destroy
    @atmosphere.destroy
    respond_to do |format|
      format.html { redirect_to atmospheres_url, notice: 'Atmosphere was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atmosphere
      @atmosphere = Atmosphere.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atmosphere_params
      params.require(:atmosphere).permit(:name)
    end
end
