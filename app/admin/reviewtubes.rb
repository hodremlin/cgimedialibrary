ActiveAdmin.register Reviewtube do
 menu label: "Reviewtube"
  
  permit_params :title, :tag_list, :business_name, :pnotes_id, :reviewtube, :thumbnail, :vertical_id, :featured, :presentation_zone_url, :playlist_1, :playlist_2
  
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
      input :reviewtube, :label => "Upload First Video"
      input :playlist_1, :label => "Upload Second Video"
      input :playlist_2, :label => "Upload Third Video"
      input :thumbnail, :label => "Upload Thumbnail"
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
      row :vertical
      row :tag_list, :label => "Tags"
      row :reviewtube, :label => "Video 1 Uploaded"
      row :playlist_1, :label => "Video 2 Uploaded"
      row :playlist_2, :label => "Video 3 Uploaded"
      row :thumbnail, :label => "Thumbnail Uploaded"
      row :presentation_zone_url, :label => "Presentation Zone"
      row :featured
    end
    active_admin_comments
  end
end
