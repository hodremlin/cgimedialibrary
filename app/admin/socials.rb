ActiveAdmin.register Social do
    menu label: "Social Media"
    permit_params :title, :tag_list, :business_name, :pnotes_id, :thumbnail, :vertical_id, :featured, :social_post, :presentation_zone_url
    
    index do
      column :title
      column :pnotes_id
      column :business_name
      column :vertical
      column :tag_list
      column :featured
      actions
    end
  
  form do |f|
    inputs "Details" do
      input :title
      input :pnotes_id, :label => "PNotes Number"
      input :business_name, :label => "Business Name"
      input :vertical_id, as: :select, collection: Vertical.all
      input :tag_list, :label => "Tags"
      input :thumbnail, :label => "Upload Thumbnail"
      input :social_post, :label => "Upload Social Media Image"
      input :presentation_zone_url, :label => "Presentation Zone"
      input :featured, as: :boolean
      
    end
    actions
  end
  
  show do
    attributes_table do
      row :title
      row :pnotes_id, :label => "PNotes Number"
      row :business_name, :label => "Business Name"
      row :vertical, :collection => Vertical.all
      row :tag_list, :label => "Tags"
      row :thumbnail, :label => "Thumbnail Uploaded"
      row :social_post, :label => "Social Media Image Uploaded"
      row :featured
      row :presentation_zone_url, :label => "Presentation Zone"
    end
    active_admin_comments
  end
end
