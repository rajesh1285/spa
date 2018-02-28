class AddColoumnLikesToSocialcampaigns < ActiveRecord::Migration[5.1]
  def change
    add_column :socialcampaigns, :like, :integer
    add_column :socialcampaigns, :dislike, :integer
  end
end
