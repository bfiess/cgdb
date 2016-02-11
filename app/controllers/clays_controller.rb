class ClaysController < ApplicationController
  before_action :set_clay, only: [:show, :edit, :update, :destroy]

  # GET /clays
  # GET /clays.json
  def index
    @clays = Clay.all
  end

  # GET /clays/1
  # GET /clays/1.json
  def show
  end

  # GET /clays/new
  def new
    @clay = Clay.new
    3.times { @clay.ingredients.build }
  end

  # GET /clays/1/edit
  def edit
  end

  # POST /clays
  # POST /clays.json
  def create
    @clay = Clay.new(clay_params)

    respond_to do |format|
      if @clay.save
        format.html { redirect_to @clay, notice: 'Clay was successfully created.' }
        format.json { render :show, status: :created, location: @clay }
      else
        format.html { render :new }
        format.json { render json: @clay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clays/1
  # PATCH/PUT /clays/1.json
  def update
    respond_to do |format|
      if @clay.update(clay_params)
        format.html { redirect_to @clay, notice: 'Clay was successfully updated.' }
        format.json { render :show, status: :ok, location: @clay }
      else
        format.html { render :edit }
        format.json { render json: @clay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clays/1
  # DELETE /clays/1.json
  def destroy
    @clay.destroy
    respond_to do |format|
      format.html { redirect_to clays_url, notice: 'Clay was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clay
      @clay = Clay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clay_params
      params.require(:clay).permit(:name, :description, :cone, :datetested, :casting, :specificgravity, :dryshrink, :bisque, :glazeshrink, :woa, :atmosphere_id, :k2o, :na2o, :li2o, :cao, :mgo, :bao, :sro, :zno, :pbo, :feo, :cuo, :coo, :nio, :al2o3, :b2o3, :fe2o3, :p2o5, :sb2o3, :cr2o3, :v2o5, :sio2, :tio2, :zro2, :sno2, :mno2)
    end
end
