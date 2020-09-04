require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe "#create" do
    before do
      @profile = FactoryBot.build(:profile)
      @profile.image = fixture_file_upload("public/rails.png")
      @profile.slide = fixture_file_upload("public/program.png")
    end

    it "title,self_introduction,price,image,slideがあれば登録できること" do
      @profile.valid?
      expect(@profile).to be_valid
    end

    it "titleが空では保存できないこと" do
      @profile.title = nil
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Title can't be blank")
    end
    
    it "self_introductionが空では保存できないこと" do
      @profile.self_introduction = nil
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Self introduction can't be blank")
    end

    it "priceが空では保存できないこと" do
      @profile.price = nil
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Price can't be blank")
    end

    it "imageが空では保存できないこと" do
      @profile.image = nil
      @profile.valid?
      
    end
    
    it "slideが空では保存できないこと" do
      @profile.slide = nil
      @profile.valid?
      expect(@profile.errors.full_messages).to include("Slide ファイルを添付してください")
    end
  end
  
end
