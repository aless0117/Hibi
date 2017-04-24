class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  if user_signed_in?
    layout "application"
  else
  layout "landpage"
  end
end
