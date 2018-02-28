class CreateSocialcampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :socialcampaigns do |t|
      t.text :content_text
      t.string :image
      t.string :videothumbnail
      t.string :socialmedia_accounts

      t.timestamps
    end
  end
end
