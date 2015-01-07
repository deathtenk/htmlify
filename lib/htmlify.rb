require "htmlify/version"

module Htmlify
  def html tag, content="", properties={}
    if (content.kind_of?(Array))
      return "<#{tag}#{get_properties properties}>#{distribute_content content}</#{tag}>"
    end
    return "<#{tag}#{get_properties properties}>#{content}</#{tag}>"
  end

  def get_properties properties
    ps = ""
    properties.each do |key, value|
      ps = ps + " #{key}='#{value}'"
    end
    ps
  end

  def distribute_content content
    content_string = ""
    content.each do |element|
      content_string = content_string + element
    end
    return content_string
  end
end
