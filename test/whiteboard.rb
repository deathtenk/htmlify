
def index_html
  
  i = doc 'html'
  
  i.head [
    title 'This is the page title',
    script src: '/js/jquery.min.js'
  ]
  
  i.style [
    css '.box1', {
      border: :none
    }
  ]
  
  i.body [
    div 'Hello! This is a box!', :box1
    div 'Hello! This is another box!', :box2
    
    # alt syntax
    div :box1 [
      'Hello. I am box'
    ]
  ]

  return i # => .class = String
end

