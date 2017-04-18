class LacksController < ApplicationController
  before_action :set_lack, only: [:show, :edit, :update, :destroy]

  # GET /lacks
  # GET /lacks.json
  def index
    @lacks = Lack.all
  end

  # GET /lacks/1
  # GET /lacks/1.json
  def show
  end

  # GET /lacks/new
  def new
    @lack = Lack.new
  end

  # GET /lacks/1/edit
  def edit
  end

  # POST /lacks
  # POST /lacks.json
  def create
    @lack = Lack.new(lack_params)

    respond_to do |format|
      if @lack.save
        format.html { redirect_to @lack, notice: 'Lack was successfully created.' }
        format.json { render :show, status: :created, location: @lack }
      else
        format.html { render :new }
        format.json { render json: @lack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lacks/1
  # PATCH/PUT /lacks/1.json
  def update
    respond_to do |format|
      if @lack.update(lack_params)
        format.html { redirect_to @lack, notice: 'Lack was successfully updated.' }
        format.json { render :show, status: :ok, location: @lack }
      else
        format.html { render :edit }
        format.json { render json: @lack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lacks/1
  # DELETE /lacks/1.json
  def destroy
    @lack.destroy
    respond_to do |format|
      format.html { redirect_to lacks_url, notice: 'Lack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lack
      @lack = Lack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lack_params
      params.require(:lack).permit(:tipodefalta)
    end
end
