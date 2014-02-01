#Data Types
class Node
  attr_accessor :node, :next

  def initialize(node)
    @node = node
  end

  def self.node_list(node, msg = nil)
    msg ||= ""
    return msg[0..-4] if node.nil?
    node_list(node.next, msg << "#{node.node} ->")
  end

  # left off at matt.weppler.me/2013/08/14/implementing-a-linked-list-in-ruby.html
end
