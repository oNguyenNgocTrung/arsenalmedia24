namespace :base_data do
  desc "Import base data"

  task import: :environment do
    Rake::Task["country:import"].invoke

    Rake::Task["completition:import"].invoke
  end
end
