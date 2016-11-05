require "csv"

namespace :country do
  desc "Import country from csv file"

  task import: :environment do
    puts "Importing ..."
    errors = []
    logger = Logger.new("log/import_country.log")
    CSV.foreach("#{Rails.root}/db/masters/country.csv", headers: true).
      with_index do |row, index|
      country = Country.find_or_initialize_by name: row["name"]
      country.assign_attributes row.to_h
      unless country.save
        errors << "Error on row: #{index + 1}, #{country.errors.messages}"
      end
    end
    logger.error "#{errors}" if errors.present?
    puts "Import done, got: #{errors.count} errors. Check log for more detail"
  end
end
