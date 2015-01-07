require 'spec_helper'

describe 'creating a div' do
  include Htmlify
  
  describe 'creating a div with content' do
    before(:each) do
      @div = "<div>Hello World</div>"
      @divify = html :div, "Hello World"
    end

    it 'creates a div with content' do
      expect(@divify).to eq(@div)
    end
  end

  describe 'getting a list of properties' do
    before(:each) do
      @expected_list = " id=\'box\'"
      @list = get_properties id: :box
    end

    it 'returns a list of properties as a string' do
      expect(@list).to eq(@expected_list)
    end
  end

  describe 'creating a div with properties and content' do
    before(:each) do
      @expected = "<div id='box' foo='bar'>Hello World</div>"
      @div_with_properties = html :div, "Hello World", id: 'box', foo: 'bar'
    end

    it 'creates a div with properties and content' do
      expect(@div_with_properties).to eq(@expected)
    end
  end

  describe 'nested lists' do
    before(:each) do
      @expected_template = "<body><div>I'm a nested div!</div></body>"
      @template = html :body, (
                    html :div, "I'm a nested div!" )
    end

    it 'returns an html template with nested elements' do
      expect(@template).to eq(@expected_template)
    end
  end

  describe 'bigger html templates with nested lists' do
    before(:each) do
      @expected_template = "<body>before nested<div>in nested</div>after nested</body>"
      @template = html(:body, 
                    ["before nested",
                    html(:div, 
                      "in nested"), 
                    "after nested"])

    end

    it 'returns an html template with nested elements and elements in the outer elements' do
      expect(@template).to eq(@expected_template)
    end
  end


end