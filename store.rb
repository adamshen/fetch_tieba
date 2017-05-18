require 'active_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'store.sqlite3').connection

class Store < ActiveRecord::Base


end
