require 'nokogiri'
require 'uri'
require 'open-uri'

require_relative 'topic'

class Tieba
  attr_accessor :page, :topic

  def initialize(name)
    @name = name
    @pn = 0
    fetch
  end

  def next_page
    @pn += 50
    fetch
  end

  def fetch
    @page = Nokogiri::HTML(open URI.escape(url))
  end

  def topics
    page.css('.t_con.cleafix')
  end

  def serialize
    topics.map do |topic|
      Topic.serialize(topic)
    end
  end

  private
  def url
    "https://tieba.baidu.com/f?kw=#{@name}&ie=utf-8&pn=#{@pn}"
  end
end
