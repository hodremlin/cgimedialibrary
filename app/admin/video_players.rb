ActiveAdmin.register VideoPlayer do
  menu label: "Videos"
  
  permit_params :title, :tag_list, :business_name, :pnotes_id, :video, :thumbnail, :vertical_id, :featured, :presentation_zone_url, :mobile_video
  
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
      input :tag_list, :label => "Tags", input_html: { value: f.object.tag_list.join(', ') }
      input :video, :label => "Upload High Definition Video"
      input :mobile_video, :label => "Upload Mobile Video"
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
      row :video, :label => "High Definition Video Uploaded"
      row :mobile_video, :label => "Mobile Video Uploaded"
      row :thumbnail, :label => "Thumbnail Uploaded"
      row :presentation_zone_url, :label => "Presentation Zone"
      row :featured
    end
    active_admin_comments
  end
end
