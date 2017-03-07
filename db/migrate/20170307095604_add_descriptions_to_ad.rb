class AddDescriptionsToAd < ActiveRecord::Migration[5.0]
  def change
    add_column :ads, :description_short, :text
    add_column :ads, :description_md, :text
  end
end
