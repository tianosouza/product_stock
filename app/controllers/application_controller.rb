class ApplicationController < ActionController::Base
  layout :layout_by_resource

  private def layout_by_resource
    if devise_controller? && resource_name == :user && action_name == 'new'
      'login'
    else
      'application'
    end
  end
end
