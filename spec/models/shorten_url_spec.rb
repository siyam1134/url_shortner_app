require 'rails_helper'

RSpec.describe ShortenUrl, type: :model do
  
  describe 'This block should check Validation ' do
    it 'should check validates format for original_url' do
      should allow_value('http://www.example.com/index.html').for(:original_url)
    end
  end
end
