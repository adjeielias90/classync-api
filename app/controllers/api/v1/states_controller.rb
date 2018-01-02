module Api
    module V1
        class StatesController < ApplicationController
            def index
                states = State.order('created_at DESC');
                render json: {status: 'SUCCESS', message:'Fetch successful for State', data:states},status: :ok
            end

            def create
                @state = State.new(state_params)
                if @state.save
                    render json: {status: 'SUCCESS', message:'State was added succesfully', data:@state},status: :ok
                else
                    render json: {status: 'ERROR', message:'Syntax error or Incorrect input', data:@state.errors},status: :unprocessable_entity
                end
            end



            def show
                @state = State.find(params[:id])
                if @state.exists?
                    render json: {status: 'SUCCESS', message: 'Fetch successful', data:@state}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Record not found', data:@state.errors}, status: :unprocessable_entity
                end
            end


            def new
                @state = State.new(state_params)
            end 





            def edit
                @state = State.find(params[:id])
            end

            def update
                @state = State.find(params[:id])
        
                if @state.update(params[:state].permit(:cancelled, :postponed, :pending))
                    render json: {status: 'SUCCESS', message: 'Update successful', data:@state}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Syntax error or Incorrect Input', data:@state.errors}, status: :unprocessable_entity
                end
            end
        
            def destroy
                @state = State.find(params[:id])
                if @state.destroy
                    render json: {status: 'SUCCESS', message: 'State inactive', data:@state}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Update Error', data:@state.errors}, status: :unprocessable_entity
                end
            end

            private

            def state_params
                params.permit(:cancelled, :postponed, :ongoing, :pending)
            end
            
        end
        
    end
end