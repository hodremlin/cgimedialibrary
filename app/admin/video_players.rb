ActiveAdmin.register VideoPlayer do
  menu label: "Videos"
  
  permit_params :title, :tag_list, :business_name, :pnotes_id, :video, :video_thumbnail, :vertical
  
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
      input :video, :label => "Upload Video"
      input :video_thumbnail, :label => "Upload Thumbnail"
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
      row :video, :label => "Video Uploaded"
      row :video_thumbnail, :label => "Thumbnail Uploaded"
    end
    active_admin_comments
  end
end
