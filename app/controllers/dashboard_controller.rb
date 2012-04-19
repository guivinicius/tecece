class DashboardController < ApplicationController
  def index
    @projects = Project.all
    @colleges = College.all
  end
end
