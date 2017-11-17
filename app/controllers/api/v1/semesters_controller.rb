module API 
    module V1
        class SemesterController < ApplicationController
            def index
                @semesters = Semester.All   
            end 

            def edit
            end

            
        end 
        
    end
end 
