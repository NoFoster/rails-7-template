class ApplicationController < ActionController::Base
  skip_forgery_protection
protected

  def after_sign_in_path_for(resource)
      return root_path
  end

  def after_sign_out_path_for(resource_or_scope)
    return signed_out_path
  end
  
end
