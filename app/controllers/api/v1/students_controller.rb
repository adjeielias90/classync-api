module Api
    module V1
        class StudentsController < ApplicationController
            def index
                students = Student.order('created_at DESC');
                render json: {status: 'SUCCESS', message:'Fetch successful for Student', data:students},status: :ok
            end

            def create
                @student = Student.new(student_params)
                if @student.save
                    render json: {status: 'SUCCESS', message:'Student was added succesfully', data:@student},status: :ok
                else
                    render json: {status: 'ERROR', message:'Syntax error or Incorrect input', data:@student_errors},status: :unprocessable_entity
                end
            end

            def show
                if
                    @student = Student.find(params[:id])
                    render json: {status: 'SUCCESS', message: 'Fetch successful', data:@student}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Record not found', data:@student_errors}, status: :unprocessable_entity
                end
            end

            def new
                @student = Student.new(student_params)
            end 


            def edit
                @student = Student.find(params[:id])
            end

            def update
                @student = Student.find(params[:id])
        
                if @student.update(params[:student].permit(:reference_number, :level_id, :index_number))

                    render json: {status: 'SUCCESS', message: 'Update successful', data:@student}, status: :ok
                else     
                    render json: {status: 'ERROR', message: 'Syntax error or Incorrect Input', data:@student_errors}, status: :unprocessable_entity
                    
                end
            end
        
            def destroy
                @student = Student.find(params[:id])
                if @student.destroy
                    render json: {status: 'SUCCESS', message: 'Student DELETED', data:@student}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Update Error', data:@student_errors}, status: :unprocessable_entity
                end
            end

            private

            def student_params
                params.permit(:reference_number, :level_id, :index_number, :image_url)
            end
            
        end
        
    end
end