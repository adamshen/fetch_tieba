class Node
  attr_accessor :nk_node

  def initialize(nk_node)
    @nk_node = nk_node
  end

  def self.serialize(nk_node)
    node = new(nk_node)
    username = node.select_text('.frs-author-name-wrap a')
    user = if username
             User.find_or_create_by(name: username)
           else
             nil
           end

    topic = Topic.new
    topic.title = node.select_attr('.threadlist_title a', 'title')
    topic.rep_num = node.select_text('.threadlist_rep_num')
    topic.user = user

    topic
  end

  def select_text(selector)
    nk_node.css(selector).first.text rescue nil
  end

  def select_attr(selector, attr)
    nk_node.css(selector).first.attributes[attr].value rescue nil
  end
end