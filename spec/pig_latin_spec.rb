require "spec_helper.rb"

describe "PigLatin" do
  before(:each) do
  end
   describe "consonant letter" do
    context "words that begin with consonant sound" do
      it "should move the first and second letters and add 'ay' to the end" do
        result = PigLatin.moderator("glorify")
        result.should == "orifyglay"
    end

    it "should move the first letter and add 'ay' to the end" do
        result = PigLatin.moderator("gossip")
        result.should == "ossipgay"
    end
  end
  end

  describe "vowelist" do
    context 'begin with vowel or silent letter' do
      it "should add 'way' to the end of word" do
        result = PigLatin.moderator("alway")
        result.should == "alwayway"
      end
    end
  end
  describe "y letter" do
    context "define position of y " do
      it "translates a word beginning with y" do
        result = PigLatin.moderator("yellow")
        result.should == "ellowyay"
      end
      it "translates y a word" do
        result = PigLatin.moderator('rhythm')
        result.should == "ythmrhay"

      end
    end
  end

end


