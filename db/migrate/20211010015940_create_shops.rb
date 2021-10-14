class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :shop_genre
      t.string :postal_code
      t.integer :state
      t.string :city
      t.string :address
      t.string :phone
      t.string :access
      t.string :parking
      t.string :business_hours
      t.string :holiday
      t.integer :credit_card
      t.integer :cash_less
      t.string :homepage
      t.string :logo_id

      t.timestamps
    end
  end
end
