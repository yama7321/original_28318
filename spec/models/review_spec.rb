require 'rails_helper'

RSpec.describe Review, type: :model do
  describe "#create" do
    before do
      @review = FactoryBot.build(:review)
    end

    it "contentが存在していれば保存できること" do
      expect(@review).to be_valid
    end
    
    it "contentが空だと保存できないこと" do
      @review.content = nil
      @review.valid?
      expect(@review.errors.full_messages).to  include("Content can't be blank")
    end
    
  end
  
end
