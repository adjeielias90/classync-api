module Api
    module V1
        class LevelsController < ApplicationController
            def index
                levels = Level.order('created_at DESC');
                render json: {status: 'SUCCESS', message:'Fetch successful for Level', data:levels},status: :ok
            end

            def create
                level = Level.new(level_params)
                    if level.save
                        render json: {status: 'SUCCESS', message:'Level was added succesfully', data:level},status: :ok
                    else
                        render json: {status: 'ERROR', message:'Syntax error or Incorrect input', data:level.errors},status: :unprocessable_entity
                    end
            end

            def show
                level = Level.find(params[:id])
                    if level.present?
                        render json: {status: 'SUCCESS', message: 'Fetch successful', data:level}, status: :ok
                    else
                        render json: {status: 'ERROR', message: 'Record not found', data:level.errors}, status: :unprocessable_entity
                    end
            end

            def new
                level = Level.new(level_params)
            end 


            def edit
                level = Level.find(params[:id])
            end

            def update
                level = Level.find(params[:id])
        
                if level.update(params[:level].permit(:name, :size))
                    render json: {status: 'SUCCESS', message: 'Class update successful', data:level}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Syntax error or Incorrect Input', data:level.errors}, status: :unprocessable_entity
                end
            end
        
            def destroy
                level = Level.find(params[:id])
                if level.destroy
                    render json: {status: 'SUCCESS', message: 'Level inactive', data:level}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Update Error', data:level.errors}, status: :unprocessable_entity
                end
            end

            private

            def level_params
                params.permit(:name, :size, :semester_id, :flag)
            end
            
        end
        
    end
end