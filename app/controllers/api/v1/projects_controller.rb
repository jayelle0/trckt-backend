class  Api::V1::ProjectsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]
    def index 
        projects = Project.all
        render json: projects
    end

    def show
        project = Project.find(params[:id])
        render json: project 
      end
  
    def create 
        project = Project.create(project_params)
        render json: project

    end 

    def destroy
        project = Project.find(params[:id])
        project.destroy!
        render json: project 
      end
    
      def update
        project = Project.find(params[:id])
        project.update!(project_params)
        render json: project
      end



    private

    def project_params
        params.require(:project).permit(:name, :payment_terms, :hourly_fee, :client_id, :complete) 
    end 


end
