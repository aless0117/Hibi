class WelcomeController < ApplicationController
  def index

  	@subjectsto_classrooms = current_user.subjectsto_classroom.all
    @todaslashoras = SubjectstoClassroom.all

  end
end
