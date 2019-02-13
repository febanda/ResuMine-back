class WorkExperiencesController < ApplicationController
    before_action :define_current_work_experience 
        
        def create
            work_experience = Work_Experience.create(work_experience_params)
            render json: work_experience
        end
        
        def index
            render json: Work_Experience.all
        end
        
        def show
            render json: current_work_experience
        end
        
        def update
            current_work_experience.update(work_experience_params)
            render json: current_work_experience
        end
        
        def destroy
            current_work_experience.destroy
            render json: current_work_experience
        end
        
        def work_experience_params
            params.permit(:company, :position, :years, :responsibilities, :resume_id)
        end
        
        def define_current_work_experience
            if params[:id]
                @current_work_experience = Work_Experience.find(params[:id])
            else
                @current_work_experience = Work_Experience.new
            end
        end
        
        def current_work_experience
            @current_work_experience
        end
end
