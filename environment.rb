Dir.glob('./app/*').each do |folder|
  Dir.glob("#{folder} /*.rb").each do |file|
    require file
  end
end


ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'adventure_time'
)
