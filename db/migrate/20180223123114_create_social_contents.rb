class CreateSocialContents < ActiveRecord::Migration[5.1]
  def change
    create_table :social_contents do |t|

      t.timestamps
    end
  end
end
