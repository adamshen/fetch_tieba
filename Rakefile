require 'active_record'

task :create_db do
  connection = ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'store.sqlite3').connection

  connection.create_table(:topics) do |t|
    t.string :title
    t.string :author
    t.integer :rep_num
  end
end