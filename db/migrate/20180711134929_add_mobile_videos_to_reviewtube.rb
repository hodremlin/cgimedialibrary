class AddMobileVideosToReviewtube < ActiveRecord::Migration
  def change
    add_column :reviewtubes, :mobile_video, :string
  end
end
