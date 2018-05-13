module Api
    module V1
        class AttendancesController < ApplicationController
            #skip_before_action :authenticate_request, only: %i[create, update]
#        before_filter :find_student
        

#            def find_student
#                @student = Student.find(params[:id])
#            end




            def index
                if
                    @attendance = Attendance.where(params[:student_id])
                    render json: {status: 'SUCCESS', message: 'Fetch Successful', data:@attendance}, status: :ok
                end
            end

            def show
                @attendance = Attendance.find(params[:student_id])
            end


            def create
  
                    #@student = Student.find(params[:student_id])
                    #@attendance = Attendance.new(params[:present => :false])
                    @attendance = Attendance.new(attendance_params) 
                if  
                    @attendance.save
                    render json: {status: 'SUCCESS', message: 'Attendance Recorded!', data:@attendance}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Record not saved', data:@attendance.errors}, status: :unprocessable_entity
                end
            end

            def new
                @attendance = Attendance.new(attendance_params)
            end 


            def edit
                @attendance = Attendance.find(params[:student_id])
            end

            

            def update
                @attendance = Attendance.find(params[:student_id])
        
                if @attendance.update(params[:attendance].permit(:present))

                    render json: {status: 'SUCCESS', message: 'Update successful', data:@attendance}, status: :ok


                else
                    render json: {status: 'ERROR', message: 'Syntax error or Incorrect Input', data:@attendance.errors}, status: :unprocessable_entity
                end
            end
        
#            def mark_register
#                if
#                    @attendance = Attendance.new(params[:present => :false]) 
#                    render json: {status: 'SUCCESS', message: 'Mark Register Successful', data:@attendance}, status: :ok
#                else
#                    render json: {status: 'ERROR', message: 'Record not found', data:@attendance_errors}, status: :unprocessable_entity
#                end
#            end
            private
            
            def attendance_params
                params.permit(:present, :student_id, :course_id, :period_id, :today_id)
            end


        end
    end
end