class HomeController < ApplicationController
  skip_before_action :authenticate_tenant!, :only => [ :index ]

  def index
    if current_user 
      if session[:tenant_id]
        Tenant.set_current
    end 
  end
end
