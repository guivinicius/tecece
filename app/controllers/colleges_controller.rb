class CollegesController < ApplicationController
  before_filter :authenticate_user!
  
  respond_to :html, :json  

  def index
    @colleges = College.all
  end

  def show
    @college = College.find(params[:id])
    @projects = @college.projects.all
  end

  def new
    @college = College.new
  end

  def edit
    @college = College.find(params[:id])
  end

  def create
    @college = College.new(params[:college])

    respond_to do |format|
      if @college.save
        format.html { redirect_to @college, notice: 'College was successfully created.' }
        format.json { render json: @college, status: :created, location: @college }
      else
        format.html { render action: "new" }
        format.json { render json: @college.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @college = College.find(params[:id])

    respond_to do |format|
      if @college.update_attributes(params[:college])
        format.html { redirect_to @college, notice: 'College was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @college.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @college = College.find(params[:id])
    @college.destroy
  end
end
