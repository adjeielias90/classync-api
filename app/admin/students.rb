ActiveAdmin.register Student do

before_filter :only => [:show, :edit, :update] do
    @student = Student.find_by_index_number(@student)
end

before_filter :only => [:index] do
    @students = Stduents.all.order('created_at DESC')
end 
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :reference_number, :level_id, :index_number


#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
