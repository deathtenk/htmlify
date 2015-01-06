require "htmlify/version"

module Htmlify
  def html tag, content, properties={}
    if properties.any?
      return "<#{tag}#{get_properties properties}>#{content}</#{tag}>"
    end
    "<#{tag}>#{content}</#{tag}>"
  end

  def get_properties properties
    ps = ""
    properties.each do |key, value|
      ps = ps + " #{key}='#{value}'"
    end
    ps
  end
end
