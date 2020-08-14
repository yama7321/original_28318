require 'rails_helper'

RSpec.describe User, type: :model do
  describe "create" do
    before do
      @user = FactoryBot.build(:user)
    end

    it "nickname,email,password,password_confirmationが存在すれば登録できること" do
      expect(@user).to  be_valid
    end

    it "nicknameが空では登録できないこと" do
      @user.nickname = nil
      @user.valid?
      expect(@user.errors.full_messages).to  include("Nickname can't be blank")
    end

    it "emailが空では登録できないこと" do
      @user.email = nil
      @user.valid?
      expect(@user.errors.full_messages).to  include("Email can't be blank")
    end

    it "emailが正しい形式でなければ登録できないこと" do
      @user.email = "email.email"
      @user.valid?
      expect(@user.errors.full_messages).to  include("Email is invalid")
    end
    
    it "重複したemailが存在する場合登録できないこと" do
      @user.save
      another_user = FactoryBot.build(:user, email: @user.email)
      another_user.valid?
      expect(another_user.errors.full_messages).to  include("Email has already been taken")
    end
    
    it "passwordが空では登録できないこと" do
      @user.password = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it "passwordが存在してもpassword_confirmationが空では登録できないこと" do
      @user.password_confirmation = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    
    it "passwordが6文字以上であれば登録できること" do
      @user.password = "abcde6"
      @user.password_confirmation = "abcde6"
      expect(@user).to be_valid
    end

    it "passwordが5文字以下であれば登録できないこと" do
      @user.password = "abcd5"
      @user.password_confirmation = "abcd5"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is invalid")
    end
    
  end
end
