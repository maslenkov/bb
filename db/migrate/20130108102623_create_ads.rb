class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :e_mail
      t.string :city
      t.string :adress
      t.integer :category_id

      t.timestamps
    end
  end
end
