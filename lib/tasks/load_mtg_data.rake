namespace :db do
  task load_mtg_data: :environment do
    file_path = Rails.root.join("db", "all_printings.psql")
    sql = File.read(file_path)
    
    ActiveRecord::Base.connection.execute(sql)
  end
end