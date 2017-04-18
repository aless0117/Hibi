class SubjectstoClassroomsController < ApplicationController
  before_action :set_subjectsto_classroom, only: [:show, :edit, :update, :destroy]

  # GET /subjectsto_classrooms
  # GET /subjectsto_classrooms.json
  def index
    @subjectsto_classrooms = SubjectstoClassroom.all

    respond_to do |format|
      format.html
      format.json { render json: @resource }
      format.pdf {render template:'nomina/reportediario', pdf: 'Reporte'}
    end
  end

  # GET /subjectsto_classrooms/1
  # GET /subjectsto_classrooms/1.json
  def show
  end

  # GET /subjectsto_classrooms/new
  def new
    @subjectsto_classroom = SubjectstoClassroom.new
    @days = Day.all
    @schedules = Schedule.all
    @users = User.all
    @classrooms = Classroom.all
    @subjects = Subject.all

  end

  # GET /subjectsto_classrooms/1/edit
  def edit

    @days = Day.all
    @schedules = Schedule.all
    @users = User.all
    @classrooms = Classroom.all
    @subjects = Subject.all

  end

  # POST /subjectsto_classrooms
  # POST /subjectsto_classrooms.json
  def create
    @subjectsto_classroom = SubjectstoClassroom.new(subjectsto_classroom_params)

    respond_to do |format|
      if @subjectsto_classroom.save
        format.html { redirect_to @subjectsto_classroom, notice: 'Subjectsto classroom was successfully created.' }
        format.json { render :show, status: :created, location: @subjectsto_classroom }
      else
        format.html { render :new }
        format.json { render json: @subjectsto_classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subjectsto_classrooms/1
  # PATCH/PUT /subjectsto_classrooms/1.json
  def update
    respond_to do |format|
      if @subjectsto_classroom.update(subjectsto_classroom_params)
        format.html { redirect_to @subjectsto_classroom, notice: 'Subjectsto classroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @subjectsto_classroom }
      else
        format.html { render :edit }
        format.json { render json: @subjectsto_classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subjectsto_classrooms/1
  # DELETE /subjectsto_classrooms/1.json
  def destroy
    @subjectsto_classroom.destroy
    respond_to do |format|
      format.html { redirect_to subjectsto_classrooms_url, notice: 'Subjectsto classroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subjectsto_classroom
      @subjectsto_classroom = SubjectstoClassroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subjectsto_classroom_params
      params.require(:subjectsto_classroom).permit(:schedule_id, :subject_id, :classroom_id, :day_id, :user_id)
    end
end
