class OpacitiesController < ApplicationController
  before_action :set_opacity, only: [:show, :edit, :update, :destroy]

  # GET /opacities
  # GET /opacities.json
  def index
    @opacities = Opacity.all
  end

  # GET /opacities/1
  # GET /opacities/1.json
  def show
  end

  # GET /opacities/new
  def new
    @opacity = Opacity.new
  end

  # GET /opacities/1/edit
  def edit
  end

  # POST /opacities
  # POST /opacities.json
  def create
    @opacity = Opacity.new(opacity_params)

    respond_to do |format|
      if @opacity.save
        format.html { redirect_to @opacity, notice: 'Opacity was successfully created.' }
        format.json { render :show, status: :created, location: @opacity }
      else
        format.html { render :new }
        format.json { render json: @opacity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opacities/1
  # PATCH/PUT /opacities/1.json
  def update
    respond_to do |format|
      if @opacity.update(opacity_params)
        format.html { redirect_to @opacity, notice: 'Opacity was successfully updated.' }
        format.json { render :show, status: :ok, location: @opacity }
      else
        format.html { render :edit }
        format.json { render json: @opacity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opacities/1
  # DELETE /opacities/1.json
  def destroy
    @opacity.destroy
    respond_to do |format|
      format.html { redirect_to opacities_url, notice: 'Opacity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opacity
      @opacity = Opacity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opacity_params
      params.require(:opacity).permit(:name)
    end
end
