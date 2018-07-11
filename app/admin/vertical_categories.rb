ActiveAdmin.register VerticalCategory do
  permit_params :title
  
    index do
      column :title
      actions
    end
  
  form do |f|
    inputs "Details" do
      input :title, :label => "Category Name"
    end
    actions
  end
  
  show do
    attributes_table do
      row :title, :label => "Category Name"
    end
    active_admin_comments
  end

end