class GlazesController < ApplicationController
  before_action :set_glaze, only: [:show, :edit, :update, :destroy]

  # GET /glazes
  # GET /glazes.json
  def index
    @glazes = Glaze.all
  end

  # GET /glazes/1
  # GET /glazes/1.json
  def show
  @batchingredients = @glaze.ingredients.without_colorant.order(amt: :desc)
  @colorantingredients = @glaze.ingredients.with_colorant.order(amt: :desc)
  
	@ro = [ 
		[ @glaze.k2o.round(3),  "K2O" ] ,
		[ @glaze.na2o.round(3), "Na2O" ] ,
		[ @glaze.li2o.round(3), "Li2O" ] ,
		[ @glaze.cao.round(3),"CaO"  ] ,
		[ @glaze.mgo.round(3),"MgO" ] ,
		[ @glaze.zno.round(3), "ZnO" ] ,
		[ @glaze.sro.round(3), "SrO" ] ,
		[ @glaze.bao.round(3), "BaO" ] ,
		[ @glaze.pbo.round(3), "PbO" ] 
	]
	
	@ro = @ro.select {|k,v| k>0}
	@ro = @ro.sort
	@ro = @ro.reverse!
	
	@r2o3 = [ 
		[ @glaze.al2o3.round(3),  "Al2o3" ] ,
		[ @glaze.b2o3.round(3), "B2o3" ] 
	]
	
	@r2o3 = @r2o3.select {|k,v| k>0}
	@r2o3 = @r2o3.sort
	@r2o3 = @r2o3.reverse!
	
	@ro2 = [ 
	[ @glaze.tio2.round(3),  "TiO<SPAN Style=vertical-align:sub;>2</span>" ] ,
	[ @glaze.sno2.round(3), "SnO<SPAN Style=vertical-align:sub;>2</span>" ] ,
	[ @glaze.zro2.round(3), "ZrO<SPAN Style=vertical-align:sub;>2</span>" ] ,
	[ @glaze.sio2.round(3), "SiO2" ] 
	]
	
	@ro2 = @ro2.select {|k,v| k>0}
	@ro2 = @ro2.sort
	@ro2 = @ro2.reverse!
	
  end

  # GET /glazes/new
  def new
    @glaze = Glaze.new
    3.times { @glaze.ingredients.build }
  end

  # GET /glazes/1/edit
  def edit
  end

  # POST /glazes
  # POST /glazes.json
  def create
    @glaze = Glaze.new(glaze_params)
    @glaze.user_id = current_user.id

    respond_to do |format|
      if @glaze.save
        format.html { redirect_to @glaze, notice: 'Glaze was successfully created.' }
        format.json { render :show, status: :created, location: @glaze }
      else
        format.html { render :new }
        format.json { render json: @glaze.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glazes/1
  # PATCH/PUT /glazes/1.json
  def update
    respond_to do |format|
      if @glaze.update(glaze_params)
        format.html { redirect_to @glaze, notice: 'Glaze was successfully updated.' }
        format.json { render :show, status: :ok, location: @glaze }
      else
        format.html { render :edit }
        format.json { render json: @glaze.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glazes/1
  # DELETE /glazes/1.json
  def destroy
    @glaze.destroy
    respond_to do |format|
      format.html { redirect_to glazes_url, notice: 'Glaze was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glaze
      @glaze = Glaze.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def glaze_params
      params.require(:glaze).permit(:name, :description, :cone, :datetested, :opacity_id, :surface_id, :atmosphere_id, :specificgravity, :clay_id, :k2o, :na2o, :li2o, :cao, :mgo, :bao, :sro, :zno, :pbo, :feo, :cuo, :coo, :nio, :al2o3, :b2o3, :fe2o3, :p2o5, :sb2o3, :cr2o3, :v2o5, :sio2, :tio2, :zro2, :sno2, :mno2, :user_id, ingredients_attributes: [:id, :amt, :material_id, :_destroy])
    end
end
