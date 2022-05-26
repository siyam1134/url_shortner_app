class CreateShortenUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :shorten_urls do |t|
      t.string :original_url
      t.string :short_url
      t.integer :total_clicks, :default=>0
      t.string :ip_address
      t.string :countries

      t.timestamps
    end
  end
end
