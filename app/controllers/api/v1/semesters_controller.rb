module Api
    module V1
        class SemestersController < ApplicationController
            def index
                semesters = Semester.order('created_at DESC');
                render json: {status: 'SUCCESS', message:'Fetch successful for Semester', data:semesters},status: :ok
            end

            def create
                @semester = Semester.new(semester_params)
                if @semester.save
                    render json: {status: 'SUCCESS', message:'Semester was added succesfully', data:@semester},status: :ok
                else
                    render json: {status: 'ERROR', message:'Syntax error or Incorrect input', data:@semester.errors},status: :unprocessable_entity
                end
            end

            def show
                @semester = Semester.find(params[:id])
                if @semester.present?
                    render json: {status: 'SUCCESS', message: 'Fetch successful', data:@semester}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Record not found', data:@semester.errors}, status: :unprocessable_entity
                end
            end

            def new
                @semester = Semester.new(semester_params)
            end 


            def edit
                @semester = Semester.find(params[:id])
            end

            def update
                @semester = Semester.find(params[:id])
        
                if @semester.update(params[:semester].permit(:end))
                    render json: {status: 'SUCCESS', message: 'Update successful', data:@semester}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Syntax error or Incorrect Input', data:@semester.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                @semester = Semester.find(params[:id])
                if @semester.destroy
                    render json: {status: 'SUCCESS', message: 'Semester inactive', data:@semester}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Update Error', data:@semester.errors}, status: :unprocessable_entity
                end
            end

            private

            def semester_params
                params.permit(:start, :end)
            end
            
        end
        
    end
end