class AddColoumnOauthtokenToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :oauth_token, :string
    add_column :users, :oauth_expires_at, :datetime
    add_column :users, :secret, :string
    add_column :users, :oauth_verifie, :string

  end
end
