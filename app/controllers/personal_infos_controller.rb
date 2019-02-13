class PersonalInfosController < ApplicationController
    before_action :define_current_personal_info
        
        def create
            personal_info = Personal_Info.create(personal_info_params)
            render json: personal_info
        end
        
        def index
            render json: Personal_Info.all
        end
        
        def show
            render json: current_personal_info
        end
        
        def update
            current_personal_info.update(personal_info_params)
            render json: current_personal_info
        end
        
        def destroy
            current_personal_info.destroy
            render json: current_personal_info
        end
        
        def personal_info_params
            params.permit(:name, :email, :phone, :bio, :title, :resume_id)
        end
        
        def define_current_personal_info
            if params[:id]
                @current_personal_info = Personal_Info.find(params[:id])
            else
                @current_personal_info = Personal_Info.new
            end
        end
        
        def current_personal_info
            @current_personal_info
        end
end
