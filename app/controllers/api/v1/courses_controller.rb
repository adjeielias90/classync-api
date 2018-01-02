module Api
    module V1



        class CoursesController < ApplicationController
            def index
                courses = Course.order('created_at DESC');
                render json: {status: 'SUCCESS', message:'Fetch successful for Course', data:courses},status: :ok
            end

            def create
                @course = Course.new(course_params)
                if @course.save
                    render json: {status: 'SUCCESS', message:'Course was added succesfully', data:@course},status: :ok
                else
                    render json: {status: 'ERROR', message:'Syntax error or Incorrect input', data:@course.errors},status: :unprocessable_entity
                end
            end




            def show
                @course = Course.find(params[:id])
                if @course.present?
                    render json: {status: 'SUCCESS', message: 'Fetch successful', data:@course}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Record not found', data:@course.errors}, status: :unprocessable_entity
                end
            end

            def new
                @course = Course.new(course_params)
            end 


            def edit
                @course = Course.find(params[:id])
            end



            def update
                @course = Course.find(params[:id])
        
                if @course.update(params[:course].permit(:code, :location, :class_id, :state_id, :period_id))
                    render json: {status: 'SUCCESS', message: 'Course update successful', data:@course}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Syntax error or Incorrect Input', data:@course.errors}, status: :unprocessable_entity
                end
            end


        
            def destroy
                @course = Course.find(params[:id])
                if @course.destroy
                    render json: {status: 'SUCCESS', message: 'Course removed', data:@course}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Update Error', data:@course.errors}, status: :unprocessable_entity
            end



            
            private

            def course_params
                params.permit(:code, :location, :class_id, :state_id, :period_id, :flag )
            end
            
        end
        
    end
end