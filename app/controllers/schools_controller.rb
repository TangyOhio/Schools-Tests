class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]

  # GET /schools
  def index
    @schools = School.all
  end

  # GET /schools/1
  def show
  end

  # GET /schools/new
  def new
    @school = School.new
  end

  # GET /schools/edit
  def edit
  end

  # POST /schools
  def create
    @school = School.new(school_params)

    if @school.save
      redirect_to @school, notice: 'Created School'
    else
      render :new
    end
  end

  # PATCH /schools/1
  def update
    if @school.update(school_params)
      redirect_to @school, notice: 'Updated School'
    else
      render :edit
    end
  end


  # DELETE /schools
  def destroy
    @school.delete
    redirect_to schools_path, notice: 'Yeeted School'
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_school
      @school = School.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def school_params
      params.require(:school).permit(:name, :address, :capacity, :principal, :private_school)
    end

end
