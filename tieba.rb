require 'nokogiri'
require 'uri'
require 'open-uri'

require_relative 'topic'
require_relative 'store'

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
    @page = Nokogiri::HTML(open url)
  end

  def topics
    page.css('.t_con.cleafix')
  end

  def serialize
    topics.each do |topic|
      Store.create(Topic.serialize(topic))
    end
  end

  private
  def url
    URI.escape("https://tieba.baidu.com/f?kw=#{@name}&ie=utf-8&pn=#{@pn}")
  end
end

