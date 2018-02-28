class AddColoumnToSocialcampaigns < ActiveRecord::Migration[5.1]
  def change
    add_column :socialcampaigns, :content_category, :string
  end
end
