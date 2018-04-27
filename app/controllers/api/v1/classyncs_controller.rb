module Api
    module V1
        class ClassyncsController < ApplicationController

            
           before_action :show

            def index
                render json: {status: 'SUCCESS', message:'Fetch successful for Today', data:@todayCourses},status: :ok

            end


            
            def show 
                @student = Student.find(params[:id])
                @level = @student.level
                @todayCourses = @levels.courses.find_by_today_id(params[:today_id])
                render json: {status: 'SUCCESS', message:'Fetch successful for Today, again', data:@level},status: :ok
            end
















        end 
    end
end