class CreateConnectedAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :connected_accounts do |t|

      t.timestamps
    end
  end
end
