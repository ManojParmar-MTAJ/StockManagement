class ApplicationController < ActionController::Base
  def after_sign_in_paths
   root_path
 end
  protect_from_forgery with: :exception
end
