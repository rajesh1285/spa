class CreateLeadAds < ActiveRecord::Migration[5.1]
  def change
    create_table :lead_ads do |t|

      t.timestamps
    end
  end
end
