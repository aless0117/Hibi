 class PerfilController < ApplicationController
  def index
  	 @subjects = Subject.all

  	 @assign_subjects = AssignSubject.all


  	 
  end
end
