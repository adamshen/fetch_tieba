require 'nokogiri'
require 'uri'
require 'open-uri'

require_relative 'topic'

class Tieba
  attr_accessor :page, :topic

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

  def fetch
    @page = Nokogiri::HTML(open url)
  end

  def topic_nodes
    page.css('.t_con.cleafix')
  end

  def serialize
    @prev_topic_titles = topic_nodes.map do |topic_node|
      topic = Topic.from_node(topic_node)
      next if @prev_topic_titles.include?(topic.title)
      topic.save
      topic.title
    end
  end

  private
  def url
    URI.escape("https://tieba.baidu.com/f?kw=#{@name}&ie=utf-8&pn=#{@pn}")
  end
end
