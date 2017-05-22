class TopicNode < Node
  def self.serialize(nk_node)
    node = new(nk_node)
    username = node.select_text('.frs-author-name-wrap a')
    user = username ? User.find_or_create_by(name: username) : nil

    topic = Topic.new
    topic.title = node.select_attr('.threadlist_title a', 'title')
    topic.href = node.select_attr('.threadlist_title a', 'href')
    topic.rep_num = node.select_text('.threadlist_rep_num')
    topic.create_data = node.select_text('.is_show_create_time')
    topic.user = user if user

    topic
  end
end