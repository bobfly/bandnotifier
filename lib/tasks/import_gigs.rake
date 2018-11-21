require 'csv'
task :import_gigs => :environment do
  csv_text = File.read('svirke2016.csv').encode("utf-8", replace: nil)
  csv = CSV.parse(csv_text, :headers => true)

  csv.each do |row|
    Gig.create!(name: row["naziv"], description: row["opis"], gig_date: Date.parse(row["datum"]), price: row["cijena"], currency: row["valuta"], gig_type: row["tip"])
  end
end

task :import_gigs_2 => :environment do
  csv_text = File.read('svirke2017.csv').encode("utf-8", replace: nil)
  csv = CSV.parse(csv_text, :headers => true)

  csv.each do |row|
    Gig.create!(name: row["naziv"], description: row["opis"], gig_date: Date.parse(row["datum"]), price: row["cijena"], currency: row["valuta"], gig_type: row["tip"])
  end
end

task :import_gigs_3 => :environment do
  csv_text = File.read('svirke2018.csv').encode("utf-8", replace: nil)
  csv = CSV.parse(csv_text, :headers => true)

  csv.each do |row|
    Gig.create!(name: row["naziv"], description: row["opis"], gig_date: Date.parse(row["datum"]), price: row["cijena"], currency: row["valuta"], gig_type: row["tip"])
  end
end