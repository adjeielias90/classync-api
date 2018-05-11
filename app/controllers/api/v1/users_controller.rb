module Api
    module V1
        class UsersController < ApplicationController

            #skip_before_action :authenticate_request, only: %i[login register]


            def register
                user = User.create(user_params)
                if user.save
                    response = { message: 'User created successfully' }
                    render json: response, status: :created 
                else
                    render json: user.errors, status: :bad
                end 
            end





            def login
                authenticate params[:email], params[:password]
            end


            def test
                render json: {
                    message: ' You have passed authentication and authorization test. This method/API-endpoint is meant for testing purposes only. Please do not abuse it.'
                }
            end




            private

                def user_params
                    params.permit(
                    :email,
                    :password,
                    :student_rep_role,
                    :student_id
                    )
                end

                def authenticate(email, password)
                    command = AuthenticateUser.call(email, password)

                    if command.success?
                        render json: {
                            access_token: command.result,
                            message: 'Login Successful'
                        }
                    else
                        render json: { error: command.errors }, status: :unauthorized
                    end
                end

                

        end
        
    end
end