class SurfacesController < ApplicationController
  before_action :set_surface, only: [:show, :edit, :update, :destroy]

  # GET /surfaces
  # GET /surfaces.json
  def index
    @surfaces = Surface.all
  end

  # GET /surfaces/1
  # GET /surfaces/1.json
  def show
  end

  # GET /surfaces/new
  def new
    @surface = Surface.new
  end

  # GET /surfaces/1/edit
  def edit
  end

  # POST /surfaces
  # POST /surfaces.json
  def create
    @surface = Surface.new(surface_params)

    respond_to do |format|
      if @surface.save
        format.html { redirect_to @surface, notice: 'Surface was successfully created.' }
        format.json { render :show, status: :created, location: @surface }
      else
        format.html { render :new }
        format.json { render json: @surface.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surfaces/1
  # PATCH/PUT /surfaces/1.json
  def update
    respond_to do |format|
      if @surface.update(surface_params)
        format.html { redirect_to @surface, notice: 'Surface was successfully updated.' }
        format.json { render :show, status: :ok, location: @surface }
      else
        format.html { render :edit }
        format.json { render json: @surface.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surfaces/1
  # DELETE /surfaces/1.json
  def destroy
    @surface.destroy
    respond_to do |format|
      format.html { redirect_to surfaces_url, notice: 'Surface was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surface
      @surface = Surface.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surface_params
      params.require(:surface).permit(:name)
    end
end
