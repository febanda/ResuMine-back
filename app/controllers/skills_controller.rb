class SkillsController < ApplicationController
    before_action :define_current_skill
        
        def create
            skill = Skill.create(skill_params)
            render json: skill
        end
        
        def index
            render json: Skill.all
        end
        
        def show
            render json: current_skill
        end
        
        def update
            current_skill.update(skill_params)
            render json: current_skill
        end
        
        def destroy
            current_skill.destroy
            render json: current_skill
        end
        
        def skill_params
            params.permit(:description, :resume_id)
        end
        
        def define_current_skill
            if params[:id]
                @current_skill = Skill.find(params[:id])
            else
                @current_skill = Skill.new
            end
        end
        
        def current_skill
            @current_skill
        end
end
