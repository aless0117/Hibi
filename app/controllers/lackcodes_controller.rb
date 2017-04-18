class LackcodesController < ApplicationController
  before_action :set_lackcode, only: [:show, :edit, :update, :destroy]

  # GET /lackcodes
  # GET /lackcodes.json
  def index
    @lackcodes = Lackcode.all
  end

  # GET /lackcodes/1
  # GET /lackcodes/1.json
  def show
  end

  # GET /lackcodes/new
  def new
    @lackcode = Lackcode.new
    @lacks = Lack.all
  end

  # GET /lackcodes/1/edit
  def edit
  end

  # POST /lackcodes
  # POST /lackcodes.json
  def create
    @lackcode = Lackcode.new(lackcode_params)

    respond_to do |format|
      if @lackcode.save
        format.html { redirect_to @lackcode, notice: 'Lackcode was successfully created.' }
        format.json { render :show, status: :created, location: @lackcode }
      else
        format.html { render :new }
        format.json { render json: @lackcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lackcodes/1
  # PATCH/PUT /lackcodes/1.json
  def update
    respond_to do |format|
      if @lackcode.update(lackcode_params)
        format.html { redirect_to @lackcode, notice: 'Lackcode was successfully updated.' }
        format.json { render :show, status: :ok, location: @lackcode }
      else
        format.html { render :edit }
        format.json { render json: @lackcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lackcodes/1
  # DELETE /lackcodes/1.json
  def destroy
    @lackcode.destroy
    respond_to do |format|
      format.html { redirect_to lackcodes_url, notice: 'Lackcode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lackcode
      @lackcode = Lackcode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lackcode_params
      params.require(:lackcode).permit(:name, :lack_id)
    end
end
