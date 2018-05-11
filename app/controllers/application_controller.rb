#module Api
    #module V1

        class ApplicationController < ActionController::Base
            #before_action :authenticate_request
            include ActionView::Layouts
            include ActionController::MimeResponds
            include ExceptionHandler
        
            
            attr_reader :current_user
            
            
            # [...]
            private
            def authenticate_request
              @current_user = AuthorizeApiRequest.call(request.headers).result
              render json: { error: 'Not Authorized' }, status: 401 unless @current_user
            end

            
        
            
        end
#    end
#end 






