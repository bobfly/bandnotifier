class AddContactInfoToGig < ActiveRecord::Migration[5.2]
  def change
    add_column :gigs, :contact_name, :string
    add_column :gigs, :contact_number, :string
  end
end
