class ReportController < ApplicationController
  def show
    @absents=Absent.all
    @subjectsto_classrooms = SubjectstoClassroom.all
    @nomina = Classroom.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @resource }
      format.pdf {render template:'report/reportediario', pdf: 'Reporte'}
    end
  end
end
