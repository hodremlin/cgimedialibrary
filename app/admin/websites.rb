ActiveAdmin.register Website do
    
    permit_params :title, :tag_list, :business_name, :pnotes_id, :web_url, :website_thumbnail, :vertical
    
    index do
      column :title
      column :pnotes_id
      column :business_name
      column :vertical
      column :tag_list
      actions
    end
  
  form do |f|
    inputs "Details" do
      input :title
      input :pnotes_id, :label => "PNotes Number"
      input :business_name, :label => "Business Name"
      input :vertical, collection: ["Attorney", "Veterinarian", "Doctor"]
      input :tag_list, :label => "Tags"
      input :web_url, :label => "Website URL"
      input :website_thumbnail, :label => "Upload Thumbnail"
    end
    actions
  end
  
  show do
    attributes_table do
      row :title
      row :pnotes_id, :label => "PNotes Number"
      row :business_name, :label => "Business Name"
      row :vertical, collection: ["Attorney", "Veterinarian", "Doctor"]
      row :tag_list, :label => "Tags"
      row :web_url, :label => "Website URL"
      row :website_thumbnail, :label => "Thumbnail Uploaded"
    end
    active_admin_comments
  end
end

