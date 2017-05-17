class Topic
  attr_accessor :doc

  def initialize(nk_node)
    @doc = nk_node
  end

  def self.serialize(nk_node)
    new(nk_node).serialize
  end

  def serialize
    {
        author: author,
        tilte: title,
        rep_num: rep_num
    }
  end

  private
  def author
    doc.css('.frs-author-name-wrap a').first.text
  end

  def title
    doc.css('.threadlist_title a').first.attributes['title'].value
  end

  def rep_num
    doc.css('.threadlist_rep_num').first.text
  end
end