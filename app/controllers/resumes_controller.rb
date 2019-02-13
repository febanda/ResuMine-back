class ResumesController < ApplicationController
    before_action :define_current_resume
        
        def create
            resume = Resume.create(resume_params)
            render json: resume
        end
        
        def index
            render json: Resume.all
        end
        
        def show
            render json: current_resume
        end
        
        def update
            current_resume.update(resume_params)
            render json: current_resume
        end
        
        def destroy
            current_resume.destroy
            render json: current_resume
        end
        
        def resume_params
            params.permit(:user_id)
        end
        
        def define_current_resume
            if params[:id]
                @current_resume = Resume.find(params[:id])
            else
                @current_resume = Resume.new
            end
        end
        
        def current_resume
            @current_resume
        end
end
