require 'csv'

task :import_body_parts => :environment do
  csv_text = File.read('data/body_parts.csv')
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    BodyPart.create!(row.to_hash)
  end
end