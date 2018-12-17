class API::V1::ProjectsController < API::V1::BaseController
  before_action :set_project, only: [:show, :update, :destroy]

  # GET /api/v1/projects
  def index
    @projects = API::V1::Project.all

    render json: @projects
  end

  # GET /api/v1/projects/1
  def show
    render json: @project
  end

  # POST /api/v1/projects
  def create
    @project = API::V1::Project.new(project_params)

    if @project.save
      render json: @project, status: :created, location: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/projects/1
  def update
    if @project.update(project_params)
      render json: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/projects/1
  def destroy
    @project.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = API::V1::Project.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_params
      params.require(:project).permit(:title, :description)
    end
end
