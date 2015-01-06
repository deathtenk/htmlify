require 'spec_helper'

describe 'creating a div' do
  include Htmlify
  
  describe 'creating a div with content' do
    before(:each) do
      @div = "<div>Hello World</div>"
      @divify = div "Hello World"
    end

    it 'creates a div' do
      expect(@divify).to eq(@div)
    end
  end
end