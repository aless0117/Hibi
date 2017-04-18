class NominaController < ApplicationController

  def show
    @students = Student.all
    @nomina = SubjectstoClassroom.find(params[:subjectsto_classroom_id])
    respond_to do |format|
      format.html
      format.json { render json: @resource }
      format.pdf {render template:'nomina/reportediario', pdf: 'Reporte'}
    end




  end
end
