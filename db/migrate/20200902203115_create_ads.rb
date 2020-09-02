class CreateAds < ActiveRecord::Migration[6.0]
  def change
    create_table :ads do |t|
      t.string :title
      t.integer :user_id
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
