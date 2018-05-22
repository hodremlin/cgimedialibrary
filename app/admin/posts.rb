ActiveAdmin.register Post do

  permit_params :title, :body, :published_at, :user_id, :tag_list
  
  scope :all
  scope :published
  scope :unpublished
  
  form do |f|
    inputs "Details" do
      input :user
      input :title
      input :tag_list, :label => "Tags"
      input :body
    end
    actions
  end
  
  show do
    attributes_table do
      row :user
      row :title
      row :tag_list, :label => "Tags"
      row :body
    end
    active_admin_comments
  end
  
  action_item :publish, only: :show  do
    link_to "Publish", publish_admin_post_path(post), method: :put if !post.published_at?
  end
  
  action_item :publish, only: :show  do
    link_to "Unpublish", unpublish_admin_post_path(post), method: :put if !post.published_at?
  end
    
  member_action :publish, method: :put do
    post = Post.find(params[:id])
    post.update(published_at: Time.zone.now)
    redirect_to admin_post_path(post)
  end
  
  member_action :unpublish, method: :put do
    post = Post.find(params[:id])
    post.update(published_at: nil)
    redirect_to admin_post_path(post)
  end
end
