class AddApiKeyToMerchants < ActiveRecord::Migration
  def change
    add_column :merchants, :api_key, :string
  end
end
