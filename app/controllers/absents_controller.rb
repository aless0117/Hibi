class AbsentsController < ApplicationController

  def index

  student = Student.find(params[:student_id])
  @absents = student.absents

  end


  def new
    @absents = Absent.new
    @absents.student_id = (params[:student_id])
    @absents.subjectsto_classroom_id = (params[:subjectsto_classroom_id])
    @absents.save
    redirect_back(fallback_location: root_path)
  end


end
#@student = SubjectstoClassroom.find(params[:subjectsto_classroom_id]),Student.find(params[:student_id])

#@absent = @student.absents.create()
