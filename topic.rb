require 'active_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'store.sqlite3').connection

class Topic < ActiveRecord::Base
  def self.from_node(nk_node)
    topic = new

    topic.author = nk_node.css('.frs-author-name-wrap a').first.text rescue nil
    topic.title = nk_node.css('.threadlist_title a').first.attributes['title'].value rescue nil
    topic.rep_num = nk_node.css('.threadlist_rep_num').first.text rescue nil

    topic
  end
end
