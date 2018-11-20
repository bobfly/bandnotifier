class AddGigTypeToGigs < ActiveRecord::Migration[5.2]
  def change
    add_column :gigs, :gig_type, :integer
  end
end
