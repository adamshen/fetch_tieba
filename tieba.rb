require 'nokogiri'
require 'uri'
require 'open-uri'

require 'active_record'
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'store.sqlite3').connection

Dir.glob(File.join(File.dirname(__FILE__), 'lib/*.rb'), &method(:require))
Dir.glob(File.join(File.dirname(__FILE__), 'models/*.rb'), &method(:require))

class Tieba
  attr_accessor :page

  def initialize(name)
    @name = name
    @pn = 0
    @prev_topic_titles = []
    fetch
  end

  def next_page
    @pn += 50
    fetch
  end

  def serialize
    @prev_topic_titles = topic_nodes.map do |topic_node|
      topic = TopicNode.serialize(topic_node)
      if @prev_topic_titles.include?(topic.title)
        Logger.info("#{topic.title} has been saved. Drop it!")
        next
      end
      topic.save
      Logger.info("#{topic.title} saved.")
      topic.title
    end
  end

  private
  def url
    URI.escape("https://tieba.baidu.com/f?kw=#{@name}&ie=utf-8&pn=#{@pn}")
  end

  def fetch
    Logger.info("Starting fetch topic titles from #{@pn} to #{@pn + 50}.")
    @page = Nokogiri::HTML(open url)
    Logger.info('Done!')
  end

  def topic_nodes
    page.css('.t_con.cleafix')
  end
end
