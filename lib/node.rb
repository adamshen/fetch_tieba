class Node
  attr_accessor :nk_node

  def initialize(nk_node)
    @nk_node = nk_node
  end

  def select_text(selector)
    nk_node.css(selector).first.text rescue nil
  end

  def select_attr(selector, attr)
    nk_node.css(selector).first.attributes[attr].value rescue nil
  end
end