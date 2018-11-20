class FixTypoOnGigs < ActiveRecord::Migration[5.2]
  def change
    remove_column :gigs, :gig_date
    remove_column :gigs, :date
    add_column :gigs, :gig_date, :date
  end
end
