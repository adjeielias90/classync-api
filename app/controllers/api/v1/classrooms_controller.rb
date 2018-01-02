module Api


    module V1

        class ClassroomsController < ApplicationController

            def index
                classrooms = Classroom.order('created_at DESC');
                render json: {status: 'SUCCESS', message:'Fetch successful for Classroom', data:classrooms},status: :ok
            end

            def create
                @classroom = Classroom.new(classroom_params)
                if @classroom.save
                    render json: {status: 'SUCCESS', message:'Classroom was added succesfully', data:@classroom},status: :ok
                else
                    render json: {status: 'ERROR', message:'Syntax error or Incorrect input', data:@classroom.errors},status: :unprocessable_entity
                end
            end

            def show
                @classroom = Classroom.find(params[:id])
                if @classroom.present?
                    render json: {status: 'SUCCESS', message: 'Fetch successful', data:@classroom}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Record not found', data:@classroom.errors}, status: :unprocessable_entity
                end
            end

            def new
                @classroom = Classroom.new(classroom_params)
            end 


            def edit
                @classroom = Classroom.find(params[:id])
            end

            def update
                @classroom = Classroom.find(params[:id])
        
                if @classroom.update(params[:classroom].permit(:name, :capacity))
                    render json: {status: 'SUCCESS', message: 'Update successful', data:@classroom}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Syntax error or Incorrect Input', data:@classroom.errors}, status: :unprocessable_entity
                end
            end
        
            def destroy
                @classroom = Classroom.find(params[:id])
                if @classroom.destroy
                    render json: {status: 'SUCCESS', message: 'Classroom inactive', data:@classroom}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Update Error', data:@classroom.errors}, status: :unprocessable_entity
                end
            end

            private

            def classroom_params
                params.permit(:name, :capacity)
            end
            


        end


        
    end





end