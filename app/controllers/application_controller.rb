class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter do
    :authenticate_user!
  end

end
