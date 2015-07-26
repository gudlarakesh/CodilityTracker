class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # This is required just in case fb authentication fails
  def new_session_path(scope)
    root_path
  end
end
