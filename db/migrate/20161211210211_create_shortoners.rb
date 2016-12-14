class CreateShortoners < ActiveRecord::Migration[5.0]
  def change
    create_table :shortoners do |t|
      t.text :url
      t.text :short_url
      t.integer :user		
      t.timestamps
    end
  end
end
