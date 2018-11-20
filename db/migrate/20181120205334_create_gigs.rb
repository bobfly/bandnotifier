class CreateGigs < ActiveRecord::Migration[5.2]
  def change
    create_table :gigs do |t|
      t.string :name
      t.string :gig_date
      t.string :date
      t.text :description
      t.decimal :price
      t.integer :currency
      t.boolean :public

      t.timestamps
    end
  end
end
