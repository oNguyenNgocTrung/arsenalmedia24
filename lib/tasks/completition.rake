require "csv"

namespace :completition do
  desc "Import completition from csv file"

  task import: :environment do
    puts "Importing ..."
    errors = []
    logger = Logger.new("log/import_completition.log")
    CSV.foreach("#{Rails.root}/db/masters/completition.csv", headers: true).
      with_index do |row, index|
      completition = Completition.find_or_initialize_by name: row["name"]
      completition.assign_attributes row.to_h
      unless completition.save
        errors << "Error on row: #{index + 1}, #{completition.errors.messages}"
      end
    end
    logger.error "#{errors}" if errors.present?
    puts "Import done, got: #{errors.count} errors. Check log for more detail"
  end
end
