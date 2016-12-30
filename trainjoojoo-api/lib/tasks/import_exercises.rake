require 'csv'

task :import_exercises => :environment do
  csv_text = File.read('data/exercises.csv')
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    Exercise.create!(row.to_hash)
  end
end