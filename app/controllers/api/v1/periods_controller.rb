module Api
    module V1
        class PeriodsController < ApplicationController
            def index
                periods = Period.order('created_at DESC');
                render json: {status: 'SUCCESS', message:'Fetch successful for Period', data:periods},status: :ok
            end

            def create
                @period = Period.new(period_params)
                if @period.save
                    render json: {status: 'SUCCESS', message:'Period was added succesfully', data:@period},status: :ok
                else
                    render json: {status: 'ERROR', message:'Syntax error or Incorrect input', data:@period.errors},status: :unprocessable_entity
                end
            end

            def show
                @period = Period.find(params[:id])
                if @period.present?
                    render json: {status: 'SUCCESS', message: 'Fetch successful', data:@period}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Record not found', data:@period.errors}, status: :unprocessable_entity
                end
            end

            def new
                @period = Period.new(period_params)
            end 


            def edit
                @period = Period.find(params[:id])
            end

            

            def update
                @period = Period.find(params[:id])
        
                if @period.update(params[:period].permit(:time))

                    render json: {status: 'SUCCESS', message: 'Update successful', data:@period}, status: :ok


                else
                    render json: {status: 'ERROR', message: 'Syntax error or Incorrect Input', data:@period.errors}, status: :unprocessable_entity
                end
            end
        
            def destroy
                @period = Period.find(params[:id])
                if @period.destroy
                    render json: {status: 'SUCCESS', message: 'Period inactive', data:@period}, status: :ok


                else
                    render json: {status: 'ERROR', message: 'Update Error', data:@period.errors}, status: :unprocessable_entity
                end
            end

            private

            def period_params
                params.permit(:time, :flag)
            end
            
        end
        
    end
end