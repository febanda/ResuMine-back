class EducationsController < ApplicationController
    before_action :define_current_education 
        
        def create
            education = Education.create(education_params)
            render json: education
        end
        
        def index
            render json: Education.all
        end
        
        def show
            render json: current_education
        end
        
        def update
            current_education.update(education_params)
            render json: current_education
        end
        
        def destroy
            current_education.destroy
            render json: current_education
        end
        
        def education_params
            params.permit(:school, :years_attended, :major, :degree, :resume_id)
        end
        
        def define_current_education
            if params[:id]
                @current_education = Education.find(params[:id])
            else
                @current_education = Education.new
            end
        end
        
        def current_education
            @current_education
        end
end
