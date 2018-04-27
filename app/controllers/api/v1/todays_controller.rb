module Api
    module V1
        class TodaysController < ApplicationController
            def index
                todays = Today.order('created_at DESC');
                render json: {status: 'SUCCESS', message:'Fetch successful for Today', data:todays},status: :ok
            end

            def create
                @today = Today.new(today_params)
                if @today.save
                    render json: {status: 'SUCCESS', message:'Today was added succesfully', data:@today},status: :ok
                else
                    render json: {status: 'ERROR', message:'Syntax error or Incorrect input', data:@today.errors},status: :unprocessable_entity
                end
            end

            def show
                @today = Today.find(params[:id])
                if @today.present?
                    render json: {status: 'SUCCESS', message: 'Fetch successful', data:@today}, include: 'courses', status: :ok
                else
                    render json: {status: 'ERROR', message: 'Record not found', data:@today.errors}, status: :unprocessable_entity
                end
            end

            def new
                @today = Today.new(today_params)
            end 


            def edit
                @today = Today.find(params[:id])
            end

            def update
                @today = Today.find(params[:id])
        
                if @today.update(params[:today].permit(:end))
                    @today.flag = true
                    render json: {status: 'SUCCESS', message: 'Update successful', data:@today}, status: :ok
                else
                    @today.flag = false
                    render json: {status: 'ERROR', message: 'Syntax error or Incorrect Input', data:@today.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                @today = Today.find(params[:id])
                if @today.destroy
                    render json: {status: 'SUCCESS', message: 'Day inactive', data:@today}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Update Error', data:@today.errors}, status: :unprocessable_entity
                end
            end

            private

            def today_params
                params.permit(:day)
            end
            
        end
        
    end
end