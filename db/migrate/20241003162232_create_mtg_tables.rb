class CreateMtgTables < ActiveRecord::Migration[7.2]
  def change
    file_path = Rails.root.join("db", "all_printings.psql")
    sql = File.read(file_path)
    ActiveRecord::Base.connection.execute(sql)
  end
end
