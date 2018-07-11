ActiveAdmin.register Vertical do
  
  permit_params :title, :vertical_category_id
  
    index do
      column :title
      column :vertical_category, :label => "Category"
      actions
    end
  
  form do |f|
    inputs "Details" do
      input :title, :label => "Vertical Name"
      input :vertical_category_id, as: :select, collection: VerticalCategory.all
    end
    actions
  end
  
  show do
    attributes_table do
      row :title, :label => "Vertical Name"
      row :vertical_category
    end
    active_admin_comments
  end
end