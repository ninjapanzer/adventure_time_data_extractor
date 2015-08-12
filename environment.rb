require 'active_record'
require 'sqlite3'

Dir.glob('./app/*').each do |folder|
  Dir.glob("#{folder}/*.rb").each do |file|
    require file
  end
end


ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/adventure_time.sqlite3',
  pool: 5,
  timeout: 5_000
)
