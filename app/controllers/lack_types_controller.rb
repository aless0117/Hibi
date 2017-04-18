class LackTypesController < ApplicationController
  before_action :set_lack_type, only: [:show, :edit, :update, :destroy]

  # GET /lack_types
  # GET /lack_types.json
  def index
    @lack_types = LackType.all
  end

  # GET /lack_types/1
  # GET /lack_types/1.json
  def show
  end

  # GET /lack_types/new
  def new
    @lack_type = LackType.new
  end

  # GET /lack_types/1/edit
  def edit
  end

  # POST /lack_types
  # POST /lack_types.json
  def create
    @lack_type = LackType.new(lack_type_params)

    respond_to do |format|
      if @lack_type.save
        format.html { redirect_to @lack_type, notice: 'Lack type was successfully created.' }
        format.json { render :show, status: :created, location: @lack_type }
      else
        format.html { render :new }
        format.json { render json: @lack_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lack_types/1
  # PATCH/PUT /lack_types/1.json
  def update
    respond_to do |format|
      if @lack_type.update(lack_type_params)
        format.html { redirect_to @lack_type, notice: 'Lack type was successfully updated.' }
        format.json { render :show, status: :ok, location: @lack_type }
      else
        format.html { render :edit }
        format.json { render json: @lack_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lack_types/1
  # DELETE /lack_types/1.json
  def destroy
    @lack_type.destroy
    respond_to do |format|
      format.html { redirect_to lack_types_url, notice: 'Lack type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lack_type
      @lack_type = LackType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lack_type_params
      params.require(:lack_type).permit(:tipodefalta)
    end
end
