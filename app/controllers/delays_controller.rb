class DelaysController < ApplicationController

  def index

  student = Student.find(params[:student_id])
  @delays = student.delays

  end


  def new
    @delays = Delay.new
    @delays.student_id = (params[:student_id])
    @delays.subjectsto_classroom_id = (params[:subjectsto_classroom_id])
    @delays.save
    redirect_back(fallback_location: root_path)

  end
end
