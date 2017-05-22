require 'active_record'
require_relative 'tieba'

task :create_db do
  connection = ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'store.sqlite3').connection

  connection.create_table(:topics) do |t|
    t.string :title
    t.string :href
    t.string :create_data
    t.integer :rep_num
    t.belongs_to :user
  end

  connection.create_table(:users) do |t|
    t.string :name
  end
end

task :demo do
  tieba = Tieba.new('阿森纳')

  (1..100).each do |_|
    tieba.serialize
    tieba.next_page
    sleep 2
  end
end