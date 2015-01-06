#
#
#

require 'sinatra'





def css_id(id, params={})
  pair = ""
  params.each do |k, v|
    pair = pair + "#{k}: #{v};\n"
  end
  "##{id} {\n #{pair} \n}"
end

def css_class(id, params={})
  pair = ""
  params.each do |k, v|
    pair = pair + "#{k}: #{v};\n"
  end
  ".#{id} {\n #{pair} \n}"
end


get '/' do
  arr = [
    css_id(:box2, {
          'border-style' => 'dotted',
          'padding_left' => '10px',
          'padding_right' => '10px',
          'padding_top' => '10px',
          'padding_bottom' => '10px'
          }),
    css_class(:box1, {
          'border-style' => 'dotted',
          'padding_left' => '10px',
          'padding_right' => '10px',
          'padding_top' => '10px',
          'padding_bottom' => '10px'
          })
  ]
  
  arr
end